#!/bin/bash
# Monitor critical services

SERVICES=("sshd" "nginx")

for svc in "${SERVICES[@]}"; do
    systemctl is-active --quiet "$svc"
    if [ $? -ne 0 ]; then
        echo "$svc is DOWN on $(hostname)"
    fi
done
