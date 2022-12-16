echo "*** /usr/local/sbin/datadev.ko"
diff -qs ~/lclsii/daq/aes-stream-drivers/data_dev/driver/datadev.ko     /usr/local/sbin/datadev.ko
echo "*** /usr/local/sbin/kcuSim"
diff -qs ~/lclsii/daq/lcls2/psdaq/build/psdaq/pgp/kcu1500/app/kcuSim    /usr/local/sbin/kcuSim
echo "*** /usr/local/sbin/kcuStatus"
diff -qs ~/lclsii/daq/lcls2/psdaq/build/psdaq/pgp/kcu1500/app/kcuStatus /usr/local/sbin/kcuStatus
echo "*** /lib/systemd/system/tdetsim.service"
diff -qs ~/lclsii/daq/lcls2/psdaq/psdaq/pgp/kcu1500/tdetsim.service     /lib/systemd/system/tdetsim.service
echo "*** /lib/systemd/system/kcu.service"
diff -qs ~/lclsii/daq/lcls2/psdaq/psdaq/pgp/kcu1500/kcu.service         /lib/systemd/system/kcu.service

echo "*** /etc/sysctl.d/99-sysctl.conf"
diff -qs ~/lclsii/daq/node_install/source/99-sysctl.conf /etc/sysctl.d/99-sysctl.conf
echo "*** /etc/sysconfig/irqbalance"
diff -qs ~/lclsii/daq/node_install/source/irqbalance     /etc/sysconfig/irqbalance
echo "*** /etc/procmgrd.conf"
diff -qs ~/lclsii/daq/node_install/source/procmgrd.conf  /etc/procmgrd.conf

# Needs sudo:
echo "*** /etc/security/limits.d/procmgrd.conf"
diff -qs ~/lclsii/daq/node_install/source/limits/procmgrd.conf /etc/security/limits.d/procmgrd.conf
