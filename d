#!/bin/bash
ip=$1
gw=$2

sed -i "s/89.190.159.66/$ip/g" /etc/sysconfig/network-scripts/ifcfg-eth0
sed -i "s/89.190.159.65/$gw/g" /etc/sysconfig/network-scripts/ifcfg-eth0

systemctl restart network
