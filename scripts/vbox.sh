#!/bin/sh

if [[ $PACKER_BUILDER_TYPE =~ virtualbox ]]; then
  mount -t iso9660 -o loop /home/vagrant/VBoxGuestAdditions.iso /mnt
  sh /mnt/VBoxLinuxAdditions.run
  umount /mnt
  rm -rf /home/vagrant/VBoxGuestAdditions.iso
fi

