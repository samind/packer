#!/bin/sh

sed -i "s/#PermitRootLogin yes/PermitRootLogin no/" /etc/ssh/sshd_config
sed -i "s/#UseDNS yes/UseDNS no/" /etc/ssh/sshd_config
echo "GSSAPIAuthentication no" >> /etc/ssh/sshd_config

