#!/bin/bash -eux
fdisk /dev/sda << EOF
n
p
1

+10000M
n
p
2

+512M
t
2
82
w
EOF
