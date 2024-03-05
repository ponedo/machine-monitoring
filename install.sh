#!/bin/bash
WORK_DIR=$(dirname $(readlink -f $0))
PWD=$(pwd)
cd ${WORK_DIR}

sed -e 's|${WORK_DIR}|'"${WORK_DIR}"'|g' templates/my_monitor.service.tmp > my_monitor.service
sed -e 's|${WORK_DIR}|'"${WORK_DIR}"'|g' templates/start.sh.tmp > start.sh
sed -e 's|${WORK_DIR}|'"${WORK_DIR}"'|g' templates/stop.sh.tmp > stop.sh

cp -f my_monitor.service /etc/systemd/system/my_monitor.service
systemctl daemon-reload
systemctl enable my_monitor.service

cd ${PWD}