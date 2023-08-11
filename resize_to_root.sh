# Execute this line first on the host
qemu-img resize -f raw debian.img +10GB 
# Then execute these codes inside VM
yum install -y cloud-utils*
growpart /dev/vda 2
pvresize /dev/vda2
pvs
vgs
resize2fs /dev/vda1
----


df -hT | grep mapper
lvextend -l +100%FREE /dev/mapper/rhel-root
xfs_growfs /
