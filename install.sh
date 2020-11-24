#!/bin/bash

mv endlessh /usr/local/bin/
cp util/endlessh.service /etc/systemd/system/
setcap 'cap_net_bind_service=+ep' /usr/local/bin/endlessh
systemctl enable endlessh
mkdir -p /etc/endlessh
touch /etc/endlessh/config
echo "Port 22" > /etc/endlessh/config
systemctl start endlessh