#!/bin/bash

export KEADM_THE_EXPOSED_IP=${KEADM_THE_EXPOSED_IP:-10.226.76.227}
sudo iptables -t nat -A OUTPUT -p tcp --dport 10350 -j DNAT --to ${KEADM_THE_EXPOSED_IP}:10003

