#!/bin/bash -eux

cat > /mnt/etc/hosts << EOF
127.0.0.1 localhost
127.0.0.1 sugaree.example.net sugaree
EOF