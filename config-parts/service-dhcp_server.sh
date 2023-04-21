#!/bin/vbash

set service dhcp-server hostfile-update
set service dhcp-server host-decl-name

# Local VLAN
set service dhcp-server shared-network-name LAN authoritative
set service dhcp-server shared-network-name LAN ping-check
set service dhcp-server shared-network-name LAN subnet 10.8.10.0/24 default-router '10.8.10.1'
set service dhcp-server shared-network-name LAN subnet 10.8.10.0/24 domain-name 'natallan.com'
set service dhcp-server shared-network-name LAN subnet 10.8.10.0/24 lease '86400'
set service dhcp-server shared-network-name LAN subnet 10.8.10.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name LAN subnet 10.8.10.0/24 range 0 start '10.8.10.200'
set service dhcp-server shared-network-name LAN subnet 10.8.10.0/24 range 0 stop '10.8.10.254'

# Trusted VLAN
set service dhcp-server shared-network-name TRUSTED authoritative
set service dhcp-server shared-network-name TRUSTED ping-check
set service dhcp-server shared-network-name TRUSTED subnet 10.8.12.0/24 default-router '10.8.12.1'
set service dhcp-server shared-network-name TRUSTED subnet 10.8.12.0/24 domain-name 'natallan.com'
set service dhcp-server shared-network-name TRUSTED subnet 10.8.12.0/24 lease '86400'
set service dhcp-server shared-network-name TRUSTED subnet 10.8.12.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name TRUSTED subnet 10.8.12.0/24 range 0 start '10.8.12.200'
set service dhcp-server shared-network-name TRUSTED subnet 10.8.12.0/24 range 0 stop '10.8.12.254'

# Servers VLAN
set service dhcp-server shared-network-name SERVERS authoritative
set service dhcp-server shared-network-name SERVERS ping-check
set service dhcp-server shared-network-name SERVERS subnet 10.8.20.0/24 default-router '10.8.20.1'
set service dhcp-server shared-network-name SERVERS subnet 10.8.20.0/24 domain-name 'natallan.com'
set service dhcp-server shared-network-name SERVERS subnet 10.8.20.0/24 lease '86400'
set service dhcp-server shared-network-name SERVERS subnet 10.8.20.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name SERVERS subnet 10.8.20.0/24 range 0 start '10.8.20.200'
set service dhcp-server shared-network-name SERVERS subnet 10.8.20.0/24 range 0 stop '10.8.20.254'

set service dhcp-server shared-network-name SERVERS subnet 10.8.20.0/24 static-mapping xerxes ip-address '10.8.20.40'
set service dhcp-server shared-network-name SERVERS subnet 10.8.20.0/24 static-mapping xerxes mac-address '1c:69:7a:61:1c:fd'
set service dhcp-server shared-network-name SERVERS subnet 10.8.20.0/24 static-mapping shodan ip-address '10.8.20.42'
set service dhcp-server shared-network-name SERVERS subnet 10.8.20.0/24 static-mapping shodan mac-address '00:1f:c6:9c:59:bd'
set service dhcp-server shared-network-name SERVERS subnet 10.8.20.0/24 static-mapping icarus ip-address '10.8.20.44'
set service dhcp-server shared-network-name SERVERS subnet 10.8.20.0/24 static-mapping icarus mac-address '1c:69:7a:a8:a3:bc'
set service dhcp-server shared-network-name SERVERS subnet 10.8.20.0/24 static-mapping technocore ip-address '10.8.20.60'
set service dhcp-server shared-network-name SERVERS subnet 10.8.20.0/24 static-mapping technocore mac-address 'e4:5f:01:81:6f:e9'
set service dhcp-server shared-network-name SERVERS subnet 10.8.20.0/24 static-mapping helios ip-address '10.8.20.11'
set service dhcp-server shared-network-name SERVERS subnet 10.8.20.0/24 static-mapping helios mac-address '3c:8c:f8:f9:c8:69'

# IoT VLAN
set service dhcp-server shared-network-name IOT authoritative
set service dhcp-server shared-network-name IOT ping-check
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 default-router '10.8.30.1'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 domain-name 'natallan.com'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 lease '86400'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 range 0 start '10.8.30.200'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 range 0 stop '10.8.30.254'

set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping tv-livingroom ip-address '10.8.30.10'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping tv-livingroom mac-address '14:c9:13:01:34:5a'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping tv-middlelounge ip-address '10.8.30.11'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping tv-middlelounge mac-address '80:47:86:70:24:de'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping echo-livingroom ip-address '10.8.30.20'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping echo-livingroom mac-address 'd8:be:65:b9:94:cd'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping echo-study ip-address '10.8.30.21'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping echo-study mac-address 'ec:8a:c4:37:ad:47'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping google-shed ip-address '10.8.30.22'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping google-shed mac-address '00:f6:20:81:d4:88'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping wled-desk ip-address '10.8.30.50'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping wled-desk mac-address '34:ab:95:1a:23:6e'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping wled-monitor ip-address '10.8.30.52'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping wled-monitor mac-address 'c4:5b:be:65:2d:02'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping firestick-lounge ip-address '10.8.30.80'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping firestick-lounge mac-address 'ec:2b:eb:a1:54:d4'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping weatherstation ip-address '10.8.30.90'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping weatherstation mac-address '84:0d:8e:b9:c8:3c'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping firetablet-study ip-address '10.8.30.100'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping firetablet-study mac-address '40:a9:cf:3f:d8:77'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping zigbee-poe ip-address '10.8.30.110'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping zigbee-poe mac-address '8c:4b:14:c0:26:ff'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping kp115-prusa ip-address '10.8.30.130'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping kp115-prusa mac-address '74:da:88:52:ab:37'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping kp115-rack ip-address '10.8.30.131'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping kp115-rack mac-address '14:eb:b6:61:9a:b5'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping kp115-washingmachine ip-address '10.8.30.132'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping kp115-washingmachine mac-address '14:eb:b6:61:97:3f'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping octoprint-prusa ip-address '10.8.30.120'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping octoprint-prusa mac-address 'dc:a6:32:0b:71:cf'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping tuya-blind-study ip-address '10.8.30.140'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping tuya-blind-study mac-address 'e0:98:06:84:8e:81'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping tuya-blind-lounge ip-address '10.8.30.141'
set service dhcp-server shared-network-name IOT subnet 10.8.30.0/24 static-mapping tuya-blind-lounge mac-address '50:02:91:62:2c:e3'

# Kids VLAN
set service dhcp-server shared-network-name KIDS authoritative
set service dhcp-server shared-network-name KIDS ping-check
set service dhcp-server shared-network-name KIDS subnet 10.8.40.0/24 default-router '10.8.40.1'
set service dhcp-server shared-network-name KIDS subnet 10.8.40.0/24 domain-name 'natallan.com'
set service dhcp-server shared-network-name KIDS subnet 10.8.40.0/24 lease '86400'
set service dhcp-server shared-network-name KIDS subnet 10.8.40.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name KIDS subnet 10.8.40.0/24 range 0 start '10.8.40.200'
set service dhcp-server shared-network-name KIDS subnet 10.8.40.0/24 range 0 stop '10.8.40.254'

set service dhcp-server shared-network-name KIDS subnet 10.8.40.0/24 static-mapping nat-phone ip-address '10.8.40.2'
set service dhcp-server shared-network-name KIDS subnet 10.8.40.0/24 static-mapping nat-phone mac-address '7a:e3:5c:43:48:d4'
set service dhcp-server shared-network-name KIDS subnet 10.8.40.0/24 static-mapping elise-ipad ip-address '10.8.40.3'
set service dhcp-server shared-network-name KIDS subnet 10.8.40.0/24 static-mapping elise-ipad mac-address 'ae:d5:af:1b:63:98'
set service dhcp-server shared-network-name KIDS subnet 10.8.40.0/24 static-mapping elise-mobile ip-address '10.8.40.4'
set service dhcp-server shared-network-name KIDS subnet 10.8.40.0/24 static-mapping elise-mobile mac-address '0e:50:f2:0d:72:62'
set service dhcp-server shared-network-name KIDS subnet 10.8.40.0/24 static-mapping elise-desktop ip-address '10.8.40.5'
set service dhcp-server shared-network-name KIDS subnet 10.8.40.0/24 static-mapping elise-desktop mac-address '50:3e:aa:66:13:b2'

# Video VLAN
set service dhcp-server shared-network-name VIDEO authoritative
set service dhcp-server shared-network-name VIDEO ping-check
set service dhcp-server shared-network-name VIDEO subnet 10.8.50.0/24 default-router '10.8.50.1'
set service dhcp-server shared-network-name VIDEO subnet 10.8.50.0/24 domain-name 'natallan.com'
set service dhcp-server shared-network-name VIDEO subnet 10.8.50.0/24 lease '86400'
set service dhcp-server shared-network-name VIDEO subnet 10.8.50.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name VIDEO subnet 10.8.50.0/24 range 0 start '10.8.50.200'
set service dhcp-server shared-network-name VIDEO subnet 10.8.50.0/24 range 0 stop '10.8.50.254'

# Guest VLAN
set service dhcp-server shared-network-name GUEST authoritative
set service dhcp-server shared-network-name GUEST ping-check
set service dhcp-server shared-network-name GUEST subnet 10.8.60.0/24 default-router '10.8.60.1'
set service dhcp-server shared-network-name GUEST subnet 10.8.60.0/24 lease '86400'
set service dhcp-server shared-network-name GUEST subnet 10.8.60.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name GUEST subnet 10.8.60.0/24 range 0 start '10.8.60.200'
set service dhcp-server shared-network-name GUEST subnet 10.8.60.0/24 range 0 stop '10.8.60.254'
