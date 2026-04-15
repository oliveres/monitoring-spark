# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Monitoring stack for Nvidia DGX Spark and OEM variants (Gigabyte AI TOP Atom). Collects GPU, CPU, memory, and container metrics via nv-monitor + Node Exporter + cAdvisor, then ships everything to a central Prometheus via remote-write. No log shipping.

## Architecture

**Data flow:** Local exporters -> Prometheus agent (zero retention) -> remote-write to central Prometheus.

**Native service:** nv-monitor runs on the host as a systemd service (port 9101). It provides GPU + CPU + RAM metrics purpose-built for DGX Spark / GB10 (unified memory, HugePages, ARM big.LITTLE aware).

**Docker Compose services:** Prometheus agent, Node Exporter, cAdvisor. No optional profiles — all three always run.

**Networking:** One Docker network (`monitoring`). Node Exporter uses `network_mode: host`. Prometheus reaches host services via `host.docker.internal`.

**Target hardware:** GB10 Grace Blackwell Superchip (ARM64). DCGM is not supported on GB10 — nv-monitor is used instead.

## Key Build Mechanism

Prometheus config uses a **two-stage Docker build**: an Alpine builder runs `envsubst` on `prometheus/prometheus.yml.template` to bake environment variables into the final config at build time. **Config changes require a rebuild** (`docker compose up -d --build`).

## Common Commands

```bash
# Deploy Docker stack
docker compose up -d --build

# Check running services
docker ps | grep monitoring-

# Check nv-monitor (native service)
systemctl status nv-monitor
curl localhost:9101/metrics

# Prometheus logs
docker logs monitoring-prometheus
```

## File Structure

- `docker-compose.yml` — 3 services: prometheus, node-exporter, cadvisor
- `.env.example` — environment variables (HOSTNAME, CENTRAL_PROMETHEUS_URL, BASIC_AUTH_*)
- `prometheus/prometheus.yml.template` — Prometheus config with `${VAR}` placeholders (envsubst at build time)
- `prometheus/Dockerfile` — two-stage build: template substitution -> prom/prometheus base image
- `nv-monitor/nv-monitor.service` — reference systemd unit for nv-monitor (installed on host, not in Docker)
