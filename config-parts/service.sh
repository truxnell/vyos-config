#!/bin/vbash

# NTP server
delete service ntp allow-client
set service ntp allow-client address '127.0.0.0/8'
set service ntp allow-client address '10.0.0.0/8'
set service ntp allow-client address '172.16.0.0/12'
set service ntp allow-client address '192.168.0.0/16'
delete service ntp server
set service ntp server au.pool.ntp.org

# SSH server
set service ssh disable-password-authentication
set service ssh port '22'

# mDNS server
set service mdns repeater interface eth1.10
set service mdns repeater interface eth1.20
set service mdns repeater interface eth1.30
set service mdns repeater interface eth1.40
set service mdns repeater interface eth1.60

# SNMP server
set service snmp community public authorization ro
set service snmp community public network 10.8.20.0/24
set service snmp community public client 10.8.20.40
set service snmp community public client 10.8.20.42
set service snmp community public client 10.8.20.44
