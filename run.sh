debug

qemu-system-x86_64 \
  -kernel linux/arch/x86_64/boot/bzImage \
  -nographic \
  -append "console=ttyS0 nokaslr" \
  -initrd ramdisk.img \
  -m 4096 \
  -s -S &

qemu-system-x86_64 \
  -kernel linux/arch/x86_64/boot/bzImage \
  -append "console=ttyS0 nokaslr" \
  -initrd ramdisk.img \
  -m 512 \
  -s -S

sudo qemu-system-x86_64 -curses -kernel linux/arch/x86_64/boot/bzImage -hda qemu-image.img -append "root=/dev/sda rw" --enable-kvm -net nic,model=virtio -net tap,ifname=tap0,script=no,downscript=no


THIS ONE:
sudo qemu-system-x86_64 -curses -kernel ~/kernel/linux/arch/x86_64/boot/bzImage -hda qemu-image.img -append "root=/dev/sda rw" --enable-kvm -net nic,model=virtio -net tap,ifname=tap0,script=no,downscript=no -m 4096 -smp 4


sudo qemu-system-x86_64 -curses -kernel ~/kernel/linux/arch/x86_64/boot/bzImage -hda qemu-image.img -append "root=/dev/sda rw" --enable-kvm -device e1000 -netdev tap,id=mynet0,ifname=tap1,script=no,downscript=no

sudo qemu-system-x86_64 -curses -kernel linux/arch/x86_64/boot/bzImage -hda ubuntu.img -append "root=/dev/sda rw" --enable-kvm

IMG=qemu-image.img
DIR=mount-point.dir
qemu-img create $IMG 100g
mkfs.ext4 $IMG
mkdir $DIR
sudo mount -o loop $IMG $DIR
sudo debootstrap --arch amd64 buster $DIR
sudo chroot $DIR

sudo umount -l

ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

passwd
apt install make
apt install git
apt install gcc
apt install vim


sudo umount $DIR
rmdir $DIR


apt install tunctl

apt install net-tools

sudo tunctl -t tap1

sudo ifconfig tap1 up
sudo ifconfig tap1 up
sudo brctl addif virbr0 tap0
chgrp netdev /dev/net/tun
sudo chgrp netdev /dev/net/tun
chmod 660 /dev/net/tun
sudo chmod 660 /dev/net/tun
stat /dev/net/tun
udo
sudo tunctl -p -t tap1 -u qemu


# interfaces(5) file used by ifup(8) and ifdown(8)
# Include files from /etc/network/interfaces.d:
# source-directory /etc/network/interfaces.d

#always want the loopback interface.
#
auto lo
iface lo inet loopback
#
## To use dhcp:fallocate -l 5G a.img

##
auto enp39s0
iface enp39s0 inet dhcp
# auto eth0
#iface eth0 inet dhcp
#
## An example static IP setup: (broadcast and gateway are optional)
##
#auto eth0
#iface eth0 inet static
#     address 192.168.0.42
#     network 192.168.0.0
#     netmask 255.255.255.0
##     broadcast 192.168.0.255
##     gateway 192.168.0.1

ip link add br0 type bridge ; ifconfig br0 up


sudo brctl addif br0 enp39s0
sudo brctl addif br0 tap1
sudo brctl delif virbr0 tap1
sudo dhclient -v br0

apt install make
apt install git
apt install gcc

# creating a new large file
fallocate -l 5G a.img
