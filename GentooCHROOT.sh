#!/bin/bash
# Author: Yusuf Hanoğlu

GENTODISC="/dev/sdb4"
mkdir /mnt/gentoo 2> /dev/null
mount $GENTODISC /mnt/gentoo
mount --types proc /proc /mnt/gentoo/proc 
mount --rbind /sys /mnt/gentoo/sys 
mount --make-rslave /mnt/gentoo/sys 
mount --rbind /dev /mnt/gentoo/dev 
mount --make-rslave /mnt/gentoo/dev
chroot /mnt/gentoo /bin/bash 
source /etc/profile 
export PS1="(Gentoo) ${PS1}"
# mount /dev/sdb2 /boot
