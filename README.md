# DGX Spark Monitoring Stack

Hardware monitoring stack for **Nvidia DGX Spark** and OEM variants (e.g. **Gigabyte AI TOP Atom**). Collects GPU, CPU, memory, and container metrics from the GB10 Grace Blackwell Superchip and ships them to a central Prometheus via remote-write.

## Why This Stack

NVIDIA DCGM (Data Center GPU Manager) is [not supported on GB10](https://forums.developer.nvidia.com/t/dcgm-exporter-missing-process-level-attribution-for-gpu-time-slicing-on-blackwell-gb10/363037) and NVIDIA has no plans to add support. This stack uses [nv-monitor](https://github.com/wentbackward/nv-monitor) instead — a lightweight native binary purpose-built for DGX Spark that correctly handles:

- Unified memory architecture (128 GB LPDDR5x shared between CPU and GPU)
- ARM big.LITTLE core topology (Cortex-X925 performance + Cortex-A725 efficiency cores)
- HugePages memory accounting
- GPU metrics via NVML (no DCGM dependency)

## Architecture

```
DGX Spark / AI TOP Atom
|
+-- nv-monitor (native binary, systemd)
|   +-- :9101/metrics
|       GPU: utilization, temperature, power, clocks, VRAM, NVENC/NVDEC, fan
|       CPU: per-core utilization, temperature, frequency (big.LITTLE aware)
|       RAM/Swap: unified memory aware, HugePages
|
+-- Docker Compose stack
|   +-- Prometheus (agent mode, WAL only, no local storage)
|   |   +-- scrapes: nv-monitor, node-exporter, cadvisor, self
|   +-- Node Exporter (host network)
|   |   +-- disk I/O, network, filesystems
|   +-- cAdvisor
|       +-- per-container CPU, RAM, I/O
|
+-----> remote-write -----> Central Prometheus + Grafana
```

## Components

| Component | Type | Port | Metrics |
|-----------|------|------|---------|
| [nv-monitor](https://github.com/wentbackward/nv-monitor) | Native (systemd) | 9101 | GPU, CPU, RAM (DGX Spark native) |
| [Prometheus](https://prometheus.io/) | Docker | 9090 | Agent mode, remote-write to central |
| [Node Exporter](https://github.com/prometheus/node_exporter) | Docker (host network) | 9100 | Disk, network, filesystems |
| [cAdvisor](https://github.com/google/cadvisor) | Docker | 8080 | Per-container CPU, RAM, I/O |

## Requirements

- Nvidia DGX Spark / Gigabyte AI TOP Atom (GB10 Grace Blackwell, ARM64)
- DGX OS (Ubuntu 24.04 based) or compatible ARM64 Linux
- Docker 20.10+ and Docker Compose v2
- Reachable central Prometheus endpoint (via VPC or HTTPS)

## Deployment

### 1. Install nv-monitor on host

Download the latest `nv-monitor-linux-arm64` binary from [nv-monitor releases](https://github.com/wentbackward/nv-monitor/releases):

```bash
sudo cp nv-monitor-linux-arm64 /usr/local/bin/nv-monitor
sudo chmod +x /usr/local/bin/nv-monitor
```

Install the systemd service (template included in this repo):

```bash
sudo cp nv-monitor/nv-monitor.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now nv-monitor
```

Verify:

```bash
systemctl status nv-monitor
curl -s localhost:9101/metrics | head -20
```

### 2. Configure environment

```bash
cp .env.example .env
```

Edit `.env` with host-specific values:

| Variable | Required | Description |
|----------|----------|-------------|
| `HOSTNAME` | Yes | Unique host identifier, e.g. `spark-1`. Appears in all metrics as the `host` label. |
| `CENTRAL_PROMETHEUS_URL` | Yes | Central Prometheus remote-write endpoint, e.g. `http://10.116.0.2:9090/api/v1/write` |
| `BASIC_AUTH_USER` | No | Basic auth username (only for HTTPS endpoints) |
| `BASIC_AUTH_PASSWORD` | No | Basic auth password (only for HTTPS endpoints) |

### 3. Deploy Docker stack

```bash
docker compose up -d --build
```

### 4. Verify

```bash
# nv-monitor running on host
systemctl status nv-monitor

# GPU/CPU/RAM metrics available
curl -s localhost:9101/metrics | grep -E "^(gpu|cpu|mem)" | head -10

# Docker services running
docker ps | grep monitoring-

# Prometheus logs (check for remote-write errors)
docker logs monitoring-prometheus 2>&1 | tail -20
```

In central Grafana, verify all targets are up:

```promql
up{host="spark-1"}
```

## Rebuilding After Config Changes

Prometheus config is baked at Docker build time via `envsubst` on `prometheus/prometheus.yml.template`. After changing `.env` or the template:

```bash
docker compose up -d --build
```

nv-monitor config changes (e.g. port, token) require editing the systemd unit and restarting:

```bash
sudo systemctl edit nv-monitor  # override ExecStart
sudo systemctl restart nv-monitor
```

## Prometheus Scrape Details

Node Exporter rewrites `instance` and `nodename` labels to `HOSTNAME`, so community Grafana dashboards (e.g. Node Exporter Full) work without manual tweaks.

All scrape jobs attach the `host` label matching `HOSTNAME`. The `external_labels` section also sets `host` and `role: spark` on all remote-written samples.

## DGX Spark Monitoring Notes

- **GPU memory**: `nvidia-smi` reports "Memory-Usage: Not Supported" on GB10 due to unified memory architecture. nv-monitor handles this correctly by reporting system-wide memory instead.
- **CPU power telemetry**: Not available on GB10 — NVIDIA has not exposed CPU power rail information. GPU power draw is available via `nvidia-smi`.
- **No BMC/IPMI**: DGX Spark does not have a BMC. All monitoring is in-band (through the OS).

## File Structure

```
monitoring-spark/
+-- docker-compose.yml               # 3 services: prometheus, node-exporter, cadvisor
+-- .env.example                      # Environment variable template
+-- prometheus/
|   +-- Dockerfile                    # Two-stage build: envsubst template -> prom/prometheus
|   +-- prometheus.yml.template       # Prometheus config with ${VAR} placeholders
+-- nv-monitor/
|   +-- nv-monitor.service            # Reference systemd unit (copy to host)
+-- README.md
```
