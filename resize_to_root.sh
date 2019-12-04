yum install -y cloud-utils*
growpart /dev/vda 2
pvresize /dev/vda2
pvs
vgs
df -hT | grep mapper
lvextend -l +100%FREE /dev/mapper/rhel-root
xfs_growfs /
