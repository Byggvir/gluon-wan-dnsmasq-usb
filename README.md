# gluon-wan-dnsmasq-usb
Modified gluon package gluon-wan-dnsmasq to support USB dongle and USB tethering

This Package adds to interfaces umts and tether to the files 

* /etc/hotplug.d/iface/50-gluon-wan-dnsmasq
* /lib/gluon/wan-dnsmasq/update.lua

This package is only usefull on devices with USB ports and must replace gluon-wan-dnsmasq.