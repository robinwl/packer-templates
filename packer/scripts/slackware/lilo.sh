#!/bin/bash -eux

cat > /mnt/etc/lilo.conf << EOF
boot = /dev/sda
vga = normal
timeout = 50
image = /boot/vmlinuz
 root = /dev/sda1
 label = Slackware
 read-only
EOF

/mnt/sbin/lilo -r /mnt