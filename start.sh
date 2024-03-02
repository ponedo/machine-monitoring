#!/bin/bash
docker volume prune
docker-compose -f /home/cnic/machine-monitoring/docker-compose.yml up -d
