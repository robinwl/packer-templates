#!/bin/sh -eux

/sbin/chroot /mnt /bin/bash <<'EOF'
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
sync
EOF