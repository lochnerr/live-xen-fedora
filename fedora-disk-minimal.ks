%include fedora-disk-base.ks
%include fedora-minimal-common.ks

services --enabled=sshd,NetworkManager,chronyd,initial-setup,zram-swap

##autopart --type=plain --noswap
##part /boot --size 511 --fstype=ext4
part / --size 2048 --fstype=ext4

%packages
-xkeyboard-config
%end
