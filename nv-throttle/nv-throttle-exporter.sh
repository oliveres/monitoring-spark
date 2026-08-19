#!/usr/bin/env bash
#
# nv-throttle-exporter.sh
#
# Exports NVIDIA clock-event ("throttle") state and cumulative violation
# counters as Prometheus metrics for node_exporter's textfile collector.
#
# Why this exists: DCGM is unsupported on GB10 and nv-monitor does not expose
# NVML clock-event reasons. On DGX Spark the practical limiter is the power
# cap, not temperature -- so the cumulative counters matter more than the
# instantaneous state, which a 5s scrape will usually miss.
#
# Metric prefix gb10_ avoids collisions with nv-monitor (nv_) and with
# Spark Studio, which already serves spark_* on :7860.
#
set -euo pipefail

OUT_DIR="${TEXTFILE_DIR:-/var/lib/node_exporter/textfile_collector}"
OUT="${OUT_DIR}/gb10_throttle.prom"

command -v nvidia-smi >/dev/null 2>&1 || {
    echo "nv-throttle-exporter: nvidia-smi not found in PATH" >&2
    exit 1
}

mkdir -p "$OUT_DIR"

TMP="$(mktemp "${OUT}.XXXXXX")"
PERF="$(mktemp)"
trap 'rm -f "$TMP" "$PERF"' EXIT

# --- current clock-event state ----------------------------------------------
# CSV query is unambiguous; the -q output repeats these names in two sections.
read -r sw_power_cap sw_thermal hw_thermal hw_brake sm_clock power_w temp_c \
    < <(nvidia-smi --query-gpu=clocks_event_reasons.sw_power_cap,clocks_event_reasons.sw_thermal_slowdown,clocks_event_reasons.hw_thermal_slowdown,clocks_event_reasons.hw_power_brake_slowdown,clocks.sm,power.draw,temperature.gpu \
        --format=csv,noheader,nounits | tr -d ' ' | tr ',' ' ')

# "Not Active" collapses to "NotActive" above, so an exact match is safe.
active() { [ "${1:-}" = "Active" ] && printf '1' || printf '0'; }

# --- cumulative counters ------------------------------------------------------
nvidia-smi -q -d PERFORMANCE > "$PERF"

# Only reads the "Clocks Event Reasons Counters" block; the state block above
# it uses several of the same labels.
counter() {
    awk -v key="$1" '
        /Clocks Event Reasons Counters/ { blk = 1; next }
        blk && /:/ {
            split($0, kv, ":")
            k = kv[1]; v = kv[2]
            gsub(/^[ \t]+|[ \t]+$/, "", k)
            gsub(/[^0-9]/, "", v)
            if (k == key) { print (v == "" ? "0" : v); exit }
        }
    ' "$PERF"
}

us_to_s() { awk -v v="${1:-0}" 'BEGIN { printf "%.6f", v / 1000000 }'; }

c_power=$(counter "SW Power Capping")
c_sw_thermal=$(counter "SW Thermal Slowdown")
c_hw_thermal=$(counter "HW Thermal Slowdown")
c_hw_brake=$(counter "HW Power Braking")
c_sync=$(counter "Sync Boost")

# --- emit ---------------------------------------------------------------------
{
    echo "# HELP gb10_gpu_clocks_event_active GPU clock-event (throttle) state right now. 1 = active."
    echo "# TYPE gb10_gpu_clocks_event_active gauge"
    echo "gb10_gpu_clocks_event_active{reason=\"sw_power_cap\"} $(active "$sw_power_cap")"
    echo "gb10_gpu_clocks_event_active{reason=\"sw_thermal_slowdown\"} $(active "$sw_thermal")"
    echo "gb10_gpu_clocks_event_active{reason=\"hw_thermal_slowdown\"} $(active "$hw_thermal")"
    echo "gb10_gpu_clocks_event_active{reason=\"hw_power_brake\"} $(active "$hw_brake")"

    echo "# HELP gb10_gpu_throttle_seconds_total Cumulative time the GPU spent throttled, by reason, since driver load."
    echo "# TYPE gb10_gpu_throttle_seconds_total counter"
    echo "gb10_gpu_throttle_seconds_total{reason=\"sw_power_cap\"} $(us_to_s "$c_power")"
    echo "gb10_gpu_throttle_seconds_total{reason=\"sw_thermal_slowdown\"} $(us_to_s "$c_sw_thermal")"
    echo "gb10_gpu_throttle_seconds_total{reason=\"hw_thermal_slowdown\"} $(us_to_s "$c_hw_thermal")"
    echo "gb10_gpu_throttle_seconds_total{reason=\"hw_power_brake\"} $(us_to_s "$c_hw_brake")"
    echo "gb10_gpu_throttle_seconds_total{reason=\"sync_boost\"} $(us_to_s "$c_sync")"

    # Sampled alongside the throttle state so they share a timestamp; nv-monitor
    # exports its own equivalents at a different cadence.
    echo "# HELP gb10_gpu_sm_clock_mhz GPU SM clock, sampled with the throttle state."
    echo "# TYPE gb10_gpu_sm_clock_mhz gauge"
    echo "gb10_gpu_sm_clock_mhz ${sm_clock:-0}"
    echo "# HELP gb10_gpu_power_watts GPU power draw, sampled with the throttle state."
    echo "# TYPE gb10_gpu_power_watts gauge"
    echo "gb10_gpu_power_watts ${power_w:-0}"
    echo "# HELP gb10_gpu_temperature_celsius GPU temperature, sampled with the throttle state."
    echo "# TYPE gb10_gpu_temperature_celsius gauge"
    echo "gb10_gpu_temperature_celsius ${temp_c:-0}"
} > "$TMP"

chmod 0644 "$TMP"
mv "$TMP" "$OUT"
