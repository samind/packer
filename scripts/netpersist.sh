#!/bin/sh

ln -f -s /dev/null /etc/udev/rules.d/70-persistent-net.rules 
sed -i "/^HWADDR/d" /etc/sysconfig/network-scripts/ifcfg-eth0
sed -i "/^UUID/d" /etc/sysconfig/network-scripts/ifcfg-eth0
sed -i 's/NM_CONTROLLED="yes"/NM_CONTROLLED="no"/g' /etc/sysconfig/network-scripts/ifcfg-eth0
