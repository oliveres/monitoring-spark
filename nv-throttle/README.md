# GB10 GPU Throttle Exporter

Exposes NVIDIA clock-event ("throttle") reasons via node_exporter's textfile
collector. DCGM is unsupported on GB10 and nv-monitor does not read NVML clock
event reasons, so this fills the gap with a small `nvidia-smi` wrapper.

## Why the counters matter more than the state

On DGX Spark the practical limiter is the **power cap**, not temperature. A
representative reading after a benchmark run:

```
SW Power Capping    : 1656138928 us   (~27.5 min)
SW Thermal Slowdown : 0 us
HW Thermal Slowdown : 0 us
```

The instantaneous 0/1 state is sampled every 10s and will miss most throttle
episodes. The cumulative counters will not — use `rate()` on them to see what
fraction of wall-clock time the GPU spent throttled.

GB10 has no discrete GPU fan and the ACPI fan is exposed with `max_state: 0`,
so fan speed is neither readable nor controllable from the OS. Throttle
counters are the signal to watch instead of RPM.

## Metrics

Prefix `gb10_` avoids collisions with nv-monitor (`nv_`) and with Spark Studio,
which serves `spark_*` on port 7860.

| Metric | Type | Labels |
|---|---|---|
| `gb10_gpu_clocks_event_active` | gauge | `reason` = sw_power_cap, sw_thermal_slowdown, hw_thermal_slowdown, hw_power_brake |
| `gb10_gpu_throttle_seconds_total` | counter | `reason` = as above, plus sync_boost |
| `gb10_gpu_sm_clock_mhz` | gauge | — |
| `gb10_gpu_power_watts` | gauge | — |
| `gb10_gpu_temperature_celsius` | gauge | — |

The last three duplicate nv-monitor metrics on purpose: they are sampled in the
same call as the throttle state, so they share a timestamp and can be correlated
without worrying about two exporters' scrape cadences.

## Install

The Docker stack picks the metrics up automatically once
`--collector.textfile.directory` is set in `docker-compose.yml` (already
committed). The script itself runs on the host, because it needs `nvidia-smi`.

```bash
sudo mkdir -p /var/lib/node_exporter/textfile_collector

sudo install -m 0755 nv-throttle/nv-throttle-exporter.sh /usr/local/bin/
sudo install -m 0644 nv-throttle/nv-throttle-exporter.service /etc/systemd/system/
sudo install -m 0644 nv-throttle/nv-throttle-exporter.timer   /etc/systemd/system/

sudo systemctl daemon-reload
sudo systemctl enable --now nv-throttle-exporter.timer

docker compose up -d --build
```

## Verify

```bash
# the file is written
cat /var/lib/node_exporter/textfile_collector/gb10_throttle.prom

# node_exporter picked it up (0 = no parse errors)
curl -s localhost:9100/metrics | grep -E 'gb10_|node_textfile_scrape_error'

# timer is firing
systemctl list-timers nv-throttle-exporter.timer
```

## Useful queries

```promql
# share of time power-capped, last 5 minutes
rate(gb10_gpu_throttle_seconds_total{reason="sw_power_cap"}[5m])

# any thermal throttling at all — expected to stay flat at 0 on a healthy box
rate(gb10_gpu_throttle_seconds_total{reason=~".*thermal.*"}[5m])
```
