#!/bin/vbash

set service dhcp-server hostfile-update
set service dhcp-server host-decl-name

# Trusted VLAN
set service dhcp-server shared-network-name TRUSTED authoritative
set service dhcp-server shared-network-name TRUSTED ping-check
set service dhcp-server shared-network-name TRUSTED subnet 10.7.10.0/24 default-router '10.7.10.1'
set service dhcp-server shared-network-name TRUSTED subnet 10.7.10.0/24 domain-name 'natallan.com'
set service dhcp-server shared-network-name TRUSTED subnet 10.7.10.0/24 lease '86400'
set service dhcp-server shared-network-name TRUSTED subnet 10.7.10.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name TRUSTED subnet 10.7.10.0/24 range 0 start '10.7.10.200'
set service dhcp-server shared-network-name TRUSTED subnet 10.7.10.0/24 range 0 stop '10.7.10.254'

# Servers VLAN
set service dhcp-server shared-network-name SERVERS authoritative
set service dhcp-server shared-network-name SERVERS ping-check
set service dhcp-server shared-network-name SERVERS subnet 10.7.20.0/24 default-router '10.7.20.1'
set service dhcp-server shared-network-name SERVERS subnet 10.7.20.0/24 domain-name 'natallan.com'
set service dhcp-server shared-network-name SERVERS subnet 10.7.20.0/24 lease '86400'
set service dhcp-server shared-network-name SERVERS subnet 10.7.20.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name SERVERS subnet 10.7.20.0/24 range 0 start '10.7.20.200'
set service dhcp-server shared-network-name SERVERS subnet 10.7.20.0/24 range 0 stop '10.7.20.254'

# IoT VLAN
set service dhcp-server shared-network-name IOT authoritative
set service dhcp-server shared-network-name IOT ping-check
set service dhcp-server shared-network-name IOT subnet 10.7.30.0/24 default-router '10.7.30.1'
set service dhcp-server shared-network-name IOT subnet 10.7.30.0/24 domain-name 'natallan.com'
set service dhcp-server shared-network-name IOT subnet 10.7.30.0/24 lease '86400'
set service dhcp-server shared-network-name IOT subnet 10.7.30.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name IOT subnet 10.7.30.0/24 range 0 start '10.7.30.200'
set service dhcp-server shared-network-name IOT subnet 10.7.30.0/24 range 0 stop '10.7.30.254'

# Video VLAN
set service dhcp-server shared-network-name VIDEO authoritative
set service dhcp-server shared-network-name VIDEO ping-check
set service dhcp-server shared-network-name VIDEO subnet 10.7.40.0/24 default-router '10.7.40.1'
set service dhcp-server shared-network-name VIDEO subnet 10.7.40.0/24 domain-name 'natallan.com'
set service dhcp-server shared-network-name VIDEO subnet 10.7.40.0/24 lease '86400'
set service dhcp-server shared-network-name VIDEO subnet 10.7.40.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name VIDEO subnet 10.7.40.0/24 range 0 start '10.7.40.200'
set service dhcp-server shared-network-name VIDEO subnet 10.7.40.0/24 range 0 stop '10.7.40.254'

# Guest VLAN
set service dhcp-server shared-network-name GUEST authoritative
set service dhcp-server shared-network-name GUEST ping-check
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 default-router '192.168.2.1'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 lease '86400'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 range 0 start '192.168.2.200'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 range 0 stop '192.168.2.254'
