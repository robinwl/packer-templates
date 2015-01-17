#!/bin/bash -eux

cat > /mnt/etc/networks << EOF
loopback 127.0.0.0
localnet 127.0.0.0
EOF