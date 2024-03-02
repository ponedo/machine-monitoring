# Introduction
A monitoring software stack configuration. The stack includes:

- Prometheus
  - Docker metrics
  - Node exporter
  - (FRR exporter to be installed)

- Grafana

- Pyroscope

# Usage
## Install
Run the command below:
```bash
./install.sh
```
This will create and enable a systemctl service named "my_monitor".
## Start
First, reconfigure docker daemon. Modify /etc/docker/daemon.json with following options added:
```json
{
    "metrics-addr" : "0.0.0.0:9323",
    "experimental" : true
}
```
Then
```bash
./start.sh
```
## Stop
```bash
./stop.sh
```

# Ports
- grafana: 3000
- pyroscope: 4040
- prometheus: 9090
- node-exporter: 9100
- docker metrics: 9323