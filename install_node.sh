# Run with sudo

cp /cds/home/c/claus/lclsii/daq/aes-stream-drivers/data_dev/driver/datadev.ko     /usr/local/sbin/
cp /cds/home/c/claus/lclsii/daq/lcls2/psdaq/build/psdaq/pgp/kcu1500/app/kcuSim    /usr/local/sbin/
cp /cds/home/c/claus/lclsii/daq/lcls2/psdaq/build/psdaq/pgp/kcu1500/app/kcuStatus /usr/local/sbin/
cp /cds/home/c/claus/lclsii/daq/lcls2/psdaq/psdaq/pgp/kcu1500/tdetsim.service     /lib/systemd/system/
cp /cds/home/c/claus/lclsii/daq/lcls2/psdaq/psdaq/pgp/kcu1500/kcu.service         /lib/systemd/system/

chmod -x /lib/systemd/system/tdetsim.service
chmod -x /lib/systemd/system/kcu.service

cp /cds/home/c/claus/lclsii/daq/node_install/source/99-sysctl.conf /etc/sysctl.d/
cp /cds/home/c/claus/lclsii/daq/node_install/source/irqbalance     /etc/sysconfig/

# Handled by puppet
cp /cds/home/c/claus/lclsii/daq/node_install/source/procmgrd.conf  /etc/
#cp /cds/home/c/claus/lclsii/daq/node_install/source/procmgrd.conf /etc/security/limits.d/

# Start default KCU image so that /dev/datadev_1 appears, needed by updatePcieFpga.py
systemctl enable tdetsim.service
systemctl start tdetsim.service
