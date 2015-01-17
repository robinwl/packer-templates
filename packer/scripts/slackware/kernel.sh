#!/bin/bash -eux

/sbin/chroot /mnt /bin/bash <<'EOF'
find /lib/modules/ -type f -name '*.ko' -exec gzip {} \;
depmod -a
EOF