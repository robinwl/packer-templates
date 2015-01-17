#!/bin/bash -eux

# Create root drive
mkfs.ext4 /dev/sda1
mount /dev/sda1 /mnt/

# Make swap and make it fly
mkswap /dev/sda2 
swapon /dev/sda2

# The base system. Contains enough software to get up and running and have a text editor and basic communications programs.
/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/*.tgz
/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/*.txz

# http://wiki.linuxquestions.org/wiki/Slackware-Minimal_Install
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/aaa_base-14.1-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/xz-5.0.5-x86_64-1.tgz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/aaa_elflibs-14.1-x86_64-3.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/acl-2.2.51-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/attr-2.4.46-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/bash-4.2.045-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/bin-11.1-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/coreutils-8.21-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/cxxlibs-6.0.18-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/dcron-4.5-x86_64-4.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/devs-2.3.1-noarch-25.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/e2fsprogs-1.42.8-x86_64-2.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/etc-14.1-x86_64-2.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/file-5.14-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/grep-2.14-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/gzip-1.6-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/kernel-generic-3.10.17-x86_64-3.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/less-451-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/openssl-solibs-1.0.1e-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/procps-3.2.8-x86_64-4.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/sed-4.2.2-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/shadow-4.1.5.1-x86_64-2.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/sharutils-4.14-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/sysvinit-2.88dsf-x86_64-3.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/sysvinit-functions-8.53-x86_64-2.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/sysvinit-scripts-2.0-noarch-17.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/util-linux-2.21.2-x86_64-6.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/udev-182-x86_64-7.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/lilo-24.0-x86_64-4.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/which-2.20-x86_64-1.txz

# Extras 1
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/aaa_terminfo-5.8-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/acpid-2.0.19-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/apmd-3.2.2-x86_64-3.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/cxxlibs-6.0.18-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/dbus-1.6.12-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/ed-1.9-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/findutils-4.4.2-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/gawk-4.1.0-x86_64-2.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/getty-ps-2.1.0b-x86_64-2.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/glibc-solibs-2.17-x86_64-7.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/glibc-zoneinfo-2013d-noarch-7.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/less-451-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/minicom-2.6.2-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/mt-st-0.9b-x86_64-2.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/mtx-1.3.12-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/patch-2.7-x86_64-2.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/splitvt-1.6.5-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/sysfsutils-2.1.0-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/tcsh-6.18.01-x86_64-2.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/time-1.7-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/zoo-2.10_22-x86_64-1.txz

# Extras 2
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/udisks2-2.1.0-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/tar-1.26-x86_64-1.tgz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/syslinux-4.06-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/ncompress-4.2.4.3-x86_64-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/mkinitrd-1.4.8-x86_64-2.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/kernel-firmware-20131008git-noarch-1.txz
#/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/a/kernel-modules-3.10.17-x86_64-3.txz


# Networking programs. Daemons, mail programs, telnet, news readers, and so on.
/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/n/iputils-s20121221-x86_64-1.txz
/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/n/dhcpcd-6.0.5-x86_64-2.txz
/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/n/openssh-6.3p1-x86_64-1.txz
/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/n/wget-1.14-x86_64-2.txz
/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/n/net-tools-1.60.20120726git-x86_64-1.txz
/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/n/nfs-utils-1.2.8-x86_64-1.txz

# Various applications that do not require the X Window System.
/usr/lib/setup/installpkg -root /mnt/ /cdrom/slackware64/ap/sudo-1.8.6p8-x86_64-1.txz