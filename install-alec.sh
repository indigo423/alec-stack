#!/usr/bin/env bash
wget http://yum.opennms.org/stable/common/packagecloud/noarch/opennms-alec-plugin-1.0.1-1.noarch.rpm
rpm2cpio opennms-alec-plugin-1.0.1-1.noarch.rpm  | cpio -idv
mkdir overlay/deploy
mv opt/opennms/deploy/opennms-alec-plugin.kar overlay/deploy
rm -rf opt


