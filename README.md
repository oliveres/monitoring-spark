# DGX Spark Monitoring Stack

Monitoring stack for Nvidia DGX Spark and OEM variants (Gigabyte AI TOP Atom). Collects GPU, CPU, memory, and container metrics and ships them to a central Prometheus via remote-write.

## Components

### Native (systemd)

- **nv-monitor** – GPU utilization, temperature, power, clocks, VRAM, NVENC/NVDEC, fan speed. CPU per-core utilization, temperature, frequency (ARM big.LITTLE aware). RAM/Swap with unified memory and HugePages support. Prometheus endpoint on `:9101`. ([wentbackward/nv-monitor](https://github.com/wentbackward/nv-monitor))

### Docker Compose

- **Prometheus Agent** – scrapes all local exporters, keeps zero retention, remote-writes to central Prometheus.
- **Node Exporter** – host-level disk I/O, network interfaces, filesystems.
- **cAdvisor** – per-container CPU, memory, I/O metrics.

## Requirements

- Nvidia DGX Spark / Gigabyte AI TOP Atom (GB10 Grace Blackwell, ARM64)
- DGX OS (Ubuntu 24.04 based) or compatible ARM64 Linux
- Docker 20.10+ and Docker Compose v2
- Reachable central Prometheus endpoint (via VPC or HTTPS)

## Deployment

### 1. Install nv-monitor on host

```bash
# Download the latest release from https://github.com/wentbackward/nv-monitor/releases
sudo cp nv-monitor-linux-arm64 /usr/local/bin/nv-monitor
sudo chmod +x /usr/local/bin/nv-monitor

# Install and start systemd service
sudo cp nv-monitor/nv-monitor.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable --now nv-monitor

# Verify
systemctl status nv-monitor
curl localhost:9101/metrics
```

### 2. Deploy Docker stack

```bash
cp .env.example .env
# Edit .env with host-specific values (HOSTNAME, CENTRAL_PROMETHEUS_URL, etc.)
docker compose up -d --build
```

## Environment Configuration

See `.env.example` for the full list. Key entries:

- `HOSTNAME` – unique identifier for the machine (propagated as `host` label in all metrics).
- `CENTRAL_PROMETHEUS_URL` – central Prometheus remote-write endpoint.
- `BASIC_AUTH_USER`, `BASIC_AUTH_PASSWORD` – required only when using HTTPS with basic auth.

## Prometheus Scrape Targets

| Job | Target | Port | Metrics |
|-----|--------|------|---------|
| `nv-monitor` | host | 9101 | GPU, CPU, RAM (DGX Spark native) |
| `node-exporter` | host | 9100 | Disk, network, filesystems |
| `cadvisor` | container | 8080 | Per-container CPU, RAM, I/O |
| `prometheus` | self | 9090 | Self-monitoring |

Node Exporter rewrites `instance` and `nodename` labels to `HOSTNAME` for Grafana dashboard compatibility.

## Verification

1. `systemctl status nv-monitor` – nv-monitor running on host.
2. `curl localhost:9101/metrics` – GPU/CPU/RAM metrics.
3. `docker ps | grep monitoring-` – Docker services running.
4. Central Grafana: `up{host="spark-1"}` – all targets reporting.

## Rebuilding After Config Changes

Prometheus config is baked at Docker build time via `envsubst`. After changing `.env` or `prometheus.yml.template`:

```bash
docker compose up -d --build
```
