#!/bin/bash -eux

cat > /mnt/etc/fstab << EOF
/dev/sda2 swap swap defaults 0 0
/dev/sda1 / ext4 defaults 1 1
devpts /dev/pts devpts gid=5,mode=620 0 0
proc /proc proc defaults 0 0
EOF