ls -l /usr/local/sbin/datadev.ko
ls -l /usr/local/sbin/kcuSim
ls -l /usr/local/sbin/kcuStatus

ls -lH /etc/sysctl.d/99-sysctl.conf
grep max_map_count /etc/sysctl.d/99-sysctl.conf
grep mqueue /etc/sysctl.d/99-sysctl.conf

ls -l /etc/sysconfig/irqbalance
ls -l /etc/procmgrd.conf

# Needs sudo:
#ls -l /etc/security/limits.d/procmgrd.conf

ls -l /dev/datadev*
grep "Build String" /proc/datadev*
grep -A 2 "Read Buffers" /proc/datadev*

ls -l /lib/systemd/system/tdetsim.service
systemctl status tdetsim
grep cfgRxCount /lib/systemd/system/tdetsim.service
grep smp_affinity_list /lib/systemd/system/tdetsim.service
ls -l /lib/systemd/system/kcu.service
systemctl status kcu
grep cfgRxCount /lib/systemd/system/kcu.service
grep smp_affinity_list /lib/systemd/system/kcu.service

ls -l /proc/irq/3[0-9][0-9]/smp_affinity_list

ls -l /proc/sys/fs/mqueue/msg_max
cat /proc/sys/fs/mqueue/msg_max
