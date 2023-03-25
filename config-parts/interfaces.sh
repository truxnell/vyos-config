#!/bin/vbash

set interfaces ethernet eth0 address 'dhcp'
set interfaces ethernet eth0 description 'WAN'
set interfaces ethernet eth0 hw-id '7c:2b:e1:13:f7:79'

set interfaces ethernet eth1 address '10.7.5.1/24'
set interfaces ethernet eth1 description 'LAN'
set interfaces ethernet eth1 vif 10 address '10.7.10.1/24'
set interfaces ethernet eth1 vif 10 description 'TRUSTED'
set interfaces ethernet eth1 vif 20 address '10.7.20.1/24'
set interfaces ethernet eth1 vif 20 description 'SERVERS'
set interfaces ethernet eth1 vif 30 address '10.7.30.1/24'
set interfaces ethernet eth1 vif 30 description 'IOT'
set interfaces ethernet eth1 vif 40 address '10.7.40.1/24'
set interfaces ethernet eth1 vif 40 description 'VIDEO'
set interfaces ethernet eth1 vif 50 address '10.7.50.1/24'
set interfaces ethernet eth1 vif 50 description 'GUEST'
set interfaces ethernet eth1 hw-id '7c:2b:e1:13:f7:7a'

set interfaces ethernet eth2 hw-id '7c:2b:e1:13:f7:7b'
set interfaces ethernet eth3 hw-id '7c:2b:e1:13:f7:7c'

# set interfaces wireguard wg01 address '10.7.11.1/24'
# set interfaces wireguard wg01 description 'WIREGUARD'
# set interfaces wireguard wg01 peer ipad-bernd allowed-ips '10.7.11.4/32'
# set interfaces wireguard wg01 peer ipad-bernd persistent-keepalive '15'
# set interfaces wireguard wg01 peer ipad-bernd public-key 'EYuUoDoCIcSYbnjNyPSsZUcz4Yp032AHWflYlH2V1EM='
# set interfaces wireguard wg01 port '51820'
# set interfaces wireguard wg01 private-key "${SECRET_WIREGUARD_PRIVATE_KEY}"
