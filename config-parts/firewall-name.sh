#!/bin/vbash

# From KIDS to LAN
set firewall name kids-lan default-action 'drop'
set firewall name kids-lan description 'From KIDS to LAN'
set firewall name kids-lan enable-default-log

# From KIDS to IOT
set firewall name kids-iot default-action 'drop'
set firewall name kids-iot description 'From KIDS to IOT'
set firewall name kids-iot enable-default-log

# From KIDS to LOCAL
set firewall name kids-local default-action 'drop'
set firewall name kids-local description 'From KIDS to LOCAL'
set firewall name kids-local enable-default-log
set firewall name kids-local rule 1 action 'accept'
set firewall name kids-local rule 1 description 'Rule: accept_dhcp'
set firewall name kids-local rule 1 destination port '67,68'
set firewall name kids-local rule 1 protocol 'udp'
set firewall name kids-local rule 1 source port '67,68'
set firewall name kids-local rule 2 action 'accept'
set firewall name kids-local rule 2 description 'Rule: accept_ntp'
set firewall name kids-local rule 2 destination port 'ntp'
set firewall name kids-local rule 2 protocol 'udp'
set firewall name kids-local rule 3 action 'accept'
set firewall name kids-local rule 3 description 'Rule: accept_mdns'
set firewall name kids-local rule 3 destination port '1900,5353'
set firewall name kids-local rule 3 destination group network-group 'multicast'
set firewall name kids-local rule 3 protocol 'udp'

# From KIDS to TRUSTED
set firewall name kids-trusted default-action 'drop'
set firewall name kids-trusted description 'From KIDS to TRUSTED'
set firewall name kids-trusted enable-default-log

# From KIDS to SERVERS
set firewall name kids-servers default-action 'drop'
set firewall name kids-servers description 'From KIDS to SERVERS'
set firewall name kids-servers enable-default-log
set firewall name kids-servers rule 1 action 'accept'
set firewall name kids-servers rule 1 description 'Rule: accept_plex_from_plex_clients'
set firewall name kids-servers rule 1 destination group address-group 'k8s_plex'
set firewall name kids-servers rule 1 destination port '32400'
set firewall name kids-servers rule 1 protocol 'tcp'
# set firewall name kids-servers rule 1 source group address-group 'plex_clients'
set firewall name kids-servers rule 2 action 'accept'
set firewall name kids-servers rule 2 description 'Rule: accept_k8s_ingress_from_plex_clients'
set firewall name kids-servers rule 2 destination group address-group 'k8s_ingress'
set firewall name kids-servers rule 2 destination port 'http,https'
set firewall name kids-servers rule 2 protocol 'tcp'
# set firewall name kids-servers rule 2 source group address-group 'plex_clients'

# From KIDS to SERVICES
set firewall name kids-services default-action 'drop'
set firewall name kids-services description 'From KIDS to SERVICES'
set firewall name kids-services enable-default-log
set firewall name kids-services rule 1 action 'accept'
set firewall name kids-services rule 1 description 'Rule: accept_dns'
set firewall name kids-services rule 1 destination port 'domain,domain-s'
set firewall name kids-services rule 1 protocol 'tcp_udp'

# From KIDS to VIDEO
set firewall name kids-video default-action 'drop'
set firewall name kids-video description 'From KIDS to VIDEO'
set firewall name kids-video enable-default-log

# From KIDS to GUEST
set firewall name kids-guest default-action 'drop'
set firewall name kids-guest description 'From KIDS to GUEST'
set firewall name kids-guest enable-default-log

# From KIDS to WAN
set firewall name kids-wan default-action 'accept'
set firewall name kids-wan description 'From KIDS to WAN'

# From GUEST to IOT
set firewall name guest-iot default-action 'drop'
set firewall name guest-iot description 'From GUEST to IOT'
set firewall name guest-iot enable-default-log

# From GUEST to LAN
set firewall name guest-lan default-action 'drop'
set firewall name guest-lan description 'From GUEST to LAN'
set firewall name guest-lan enable-default-log

# From GUEST to LOCAL
set firewall name guest-local default-action 'drop'
set firewall name guest-local description 'From GUEST to LOCAL'
set firewall name guest-local enable-default-log
set firewall name guest-local rule 1 action 'accept'
set firewall name guest-local rule 1 description 'Rule: accept_dhcp'
set firewall name guest-local rule 1 destination port '67,68'
set firewall name guest-local rule 1 protocol 'udp'
set firewall name guest-local rule 1 source port '67,68'

# From GUEST to SERVERS
set firewall name guest-servers default-action 'drop'
set firewall name guest-servers description 'From GUEST to SERVERS'
set firewall name guest-servers enable-default-log

# From GUEST to SERVICES
set firewall name guest-services default-action 'drop'
set firewall name guest-services description 'From GUEST to SERVICES'
set firewall name guest-services enable-default-log
set firewall name guest-services rule 1 action 'accept'
set firewall name guest-services rule 1 description 'Rule: accept_dns'
set firewall name guest-services rule 1 destination port 'domain,domain-s'
set firewall name guest-services rule 1 protocol 'tcp_udp'

# From GUEST to TRUSTED
set firewall name guest-trusted default-action 'drop'
set firewall name guest-trusted description 'From GUEST to TRUSTED'
set firewall name guest-trusted enable-default-log

# From GUEST to VIDEO
set firewall name guest-video default-action 'drop'
set firewall name guest-video description 'From GUEST to VIDEO'
set firewall name guest-video enable-default-log

# From GUEST to KIDS
set firewall name guest-kids default-action 'drop'
set firewall name guest-kids description 'From GUEST to KIDS'
set firewall name guest-kids enable-default-log

# From GUEST to WAN
set firewall name guest-wan default-action 'accept'
set firewall name guest-wan description 'From GUEST to WAN'

# From IOT to GUEST
set firewall name iot-guest default-action 'drop'
set firewall name iot-guest description 'From IOT to GUEST'
set firewall name iot-guest enable-default-log

# From IOT to LAN
set firewall name iot-lan default-action 'drop'
set firewall name iot-lan description 'From IOT to LAN'
set firewall name iot-lan enable-default-log

# From IOT to LOCAL
set firewall name iot-local default-action 'drop'
set firewall name iot-local description 'From IOT to LOCAL'
set firewall name iot-local enable-default-log
set firewall name iot-local rule 2 action 'accept'
set firewall name iot-local rule 2 description 'Rule: accept_ntp'
set firewall name iot-local rule 2 destination port 'ntp'
set firewall name iot-local rule 2 protocol 'udp'
set firewall name iot-local rule 3 action 'accept'
set firewall name iot-local rule 3 description 'Rule: accept_dhcp'
set firewall name iot-local rule 3 destination port '67,68'
set firewall name iot-local rule 3 protocol 'udp'
set firewall name iot-local rule 3 source port '67,68'
set firewall name iot-local rule 4 action 'accept'
set firewall name iot-local rule 4 description 'Rule: accept_igmp'
set firewall name iot-local rule 4 protocol '2'
set firewall name iot-local rule 5 action 'accept'
set firewall name iot-local rule 5 description 'Rule: accept_mdns'
set firewall name iot-local rule 5 destination port 'mdns'
set firewall name iot-local rule 5 protocol 'udp'
set firewall name iot-local rule 5 source port 'mdns'
set firewall name iot-local rule 6 action 'accept'
set firewall name iot-local rule 6 description 'Rule: accept_mdns'
set firewall name iot-local rule 6 destination port '1900,5353'
set firewall name iot-local rule 6 destination group network-group 'multicast'
set firewall name iot-local rule 6 protocol 'udp'

# From IOT to SERVERS
set firewall name iot-servers default-action 'drop'
set firewall name iot-servers description 'From IOT to SERVERS'
set firewall name iot-servers enable-default-log
# set firewall name iot-servers rule 1 action 'accept'
# set firewall name iot-servers rule 1 description 'Rule: accept_nas_smb_from_scanners'
# set firewall name iot-servers rule 1 destination group address-group 'nas'
# set firewall name iot-servers rule 1 destination port 'microsoft-ds'
# set firewall name iot-servers rule 1 protocol 'tcp'
# set firewall name iot-servers rule 1 source group address-group 'scanners'
set firewall name iot-servers rule 2 action 'accept'
set firewall name iot-servers rule 2 description 'Rule: accept_plex_from_plex_clients'
set firewall name iot-servers rule 2 destination group address-group 'k8s_plex'
set firewall name iot-servers rule 2 destination port '32400'
set firewall name iot-servers rule 2 protocol 'tcp_udp'
set firewall name iot-servers rule 2 source group address-group 'plex_clients'
set firewall name iot-servers rule 4 action 'accept'
set firewall name iot-servers rule 4 description 'Rule: accept_mqtt_from_mqtt_clients'
set firewall name iot-servers rule 4 destination group address-group 'k8s_mqtt'
set firewall name iot-servers rule 4 destination port '1883'
set firewall name iot-servers rule 4 protocol 'tcp_udp'
set firewall name iot-servers rule 4 source group address-group 'mqtt_clients'
# set firewall name iot-servers rule 5 action 'accept'
# set firewall name iot-servers rule 5 description 'Rule: accept_mqtt_from_esp'
# set firewall name iot-servers rule 5 destination group address-group 'k8s_mqtt'
# set firewall name iot-servers rule 5 destination port '1883'
# set firewall name iot-servers rule 5 protocol 'tcp'
# set firewall name iot-servers rule 5 source group address-group 'esp'
# set firewall name iot-servers rule 7 action 'accept'
# set firewall name iot-servers rule 7 description 'Rule: accept_k8s_ingress_from_ereaders'
# set firewall name iot-servers rule 7 destination group address-group 'k8s_ingress'
# set firewall name iot-servers rule 7 destination port 'http,https'
# set firewall name iot-servers rule 7 protocol 'tcp'
# set firewall name iot-servers rule 7 source group address-group 'ereaders'
set firewall name iot-servers rule 8 action 'accept'
set firewall name iot-servers rule 8 description 'Rule: accept_k8s_ingress_from_wall_displays'
set firewall name iot-servers rule 8 destination group address-group 'k8s_ingress'
set firewall name iot-servers rule 8 destination port 'http,https'
set firewall name iot-servers rule 8 protocol 'tcp'
set firewall name iot-servers rule 8 source group address-group 'wall_displays'
set firewall name iot-servers rule 9 action 'accept'
set firewall name iot-servers rule 9 description 'Rule: accept_k8s_ingress_from_allowed_devices'
set firewall name iot-servers rule 9 destination group address-group 'k8s_ingress'
set firewall name iot-servers rule 9 destination port 'http,https'
set firewall name iot-servers rule 9 protocol 'tcp'
set firewall name iot-servers rule 9 source group address-group 'k8s_ingress_allowed'
set firewall name iot-servers rule 10 action 'accept'
set firewall name iot-servers rule 10 description 'Rule: accept_vector_journald_from_allowed_devices'
set firewall name iot-servers rule 10 destination group address-group 'k8s_vector_aggregator'
set firewall name iot-servers rule 10 destination port '6002'
set firewall name iot-servers rule 10 protocol 'tcp'
set firewall name iot-servers rule 10 source group address-group 'vector_journald_allowed'
set firewall name iot-servers rule 11 action 'accept'
set firewall name iot-servers rule 11 description 'Rule: accept_k8s_ingress_from_plex_clients'
set firewall name iot-servers rule 11 destination group address-group 'k8s_ingress'
set firewall name iot-servers rule 11 destination port 'http,https'
set firewall name iot-servers rule 11 protocol 'tcp'
set firewall name iot-servers rule 11 source group address-group 'plex_clients'

# From IOT to SERVICES
set firewall name iot-services default-action 'accept'
set firewall name iot-services description 'From IOT to SERVICES'

# From IOT to TRUSTED
set firewall name iot-trusted default-action 'drop'
set firewall name iot-trusted description 'From IOT to TRUSTED'
set firewall name iot-trusted enable-default-log
set firewall name iot-trusted rule 1 action 'accept'
set firewall name iot-trusted rule 1 description 'Rule: accept_echo_to_trusted'
set firewall name iot-trusted rule 1 destination port '60000'
set firewall name iot-trusted rule 1 protocol 'udp'
set firewall name iot-trusted rule 2 action 'accept'
set firewall name iot-trusted rule 2 description 'Rule: accept_chromecast_to_trusted_tcp'
set firewall name iot-trusted rule 2 destination port '8008,8009,8443'
set firewall name iot-trusted rule 2 protocol 'tcp'
set firewall name iot-trusted rule 3 action 'accept'
set firewall name iot-trusted rule 3 description 'Rule: accept_chromecast_to_trusted_udp'
set firewall name iot-trusted rule 3 destination port '32768-61000'
set firewall name iot-trusted rule 3 protocol 'udp'

# From IOT to VIDEO
set firewall name iot-video default-action 'drop'
set firewall name iot-video description 'From IOT to VIDEO'
set firewall name iot-video enable-default-log

# From IOT to KIDS
set firewall name iot-kids default-action 'drop'
set firewall name iot-kids description 'From IOT to KIDS'
set firewall name iot-kids enable-default-log

# From IOT to WAN
set firewall name iot-wan default-action 'accept'
set firewall name iot-wan description 'From IOT to WAN'

# From LAN to GUEST
set firewall name lan-guest default-action 'drop'
set firewall name lan-guest description 'From LAN to GUEST'
set firewall name lan-guest enable-default-log

# From LAN to IOT
set firewall name lan-iot default-action 'drop'
set firewall name lan-iot description 'From LAN to IOT'
set firewall name lan-iot enable-default-log

# From LAN to LOCAL
set firewall name lan-local default-action 'drop'
set firewall name lan-local description 'From LAN to LOCAL'
set firewall name lan-local enable-default-log
set firewall name lan-local rule 1 action 'accept'
set firewall name lan-local rule 1 description 'Rule: accept_ssh'
set firewall name lan-local rule 1 destination port 'ssh'
set firewall name lan-local rule 1 protocol 'tcp'
set firewall name lan-local rule 2 action 'accept'
set firewall name lan-local rule 2 description 'Rule: accept_ntp'
set firewall name lan-local rule 2 destination port 'ntp'
set firewall name lan-local rule 2 protocol 'udp'
set firewall name lan-local rule 3 action 'accept'
set firewall name lan-local rule 3 description 'Rule: accept_dhcp'
set firewall name lan-local rule 3 destination port '67,68'
set firewall name lan-local rule 3 protocol 'udp'
set firewall name lan-local rule 3 source port '67,68'

# From LAN to SERVERS
set firewall name lan-servers default-action 'drop'
set firewall name lan-servers description 'From LAN to SERVERS'
set firewall name lan-servers enable-default-log
set firewall name lan-servers rule 1 action 'accept'
set firewall name lan-servers rule 1 description 'Rule: accept_icmp'
set firewall name lan-servers rule 1 protocol 'icmp'

# From LAN to SERVICES
set firewall name lan-services default-action 'accept'
set firewall name lan-services description 'From LAN to SERVICES'

# From LAN to TRUSTED
set firewall name lan-trusted default-action 'drop'
set firewall name lan-trusted description 'From LAN to TRUSTED'
set firewall name lan-trusted enable-default-log
set firewall name lan-trusted rule 1 action 'accept'
set firewall name lan-trusted rule 1 description 'Rule: accept_icmp'
set firewall name lan-trusted rule 1 protocol 'icmp'

# From LAN to VIDEO
set firewall name lan-video default-action 'drop'
set firewall name lan-video description 'From LAN to VIDEO'
set firewall name lan-video enable-default-log

# From LAN to KIDS
set firewall name lan-kids default-action 'drop'
set firewall name lan-kids description 'From LAN to KIDS'
set firewall name lan-kids enable-default-log

# From LAN to WAN
set firewall name lan-wan default-action 'accept'
set firewall name lan-wan description 'From LAN to WAN'

# From LOCAL to GUEST
set firewall name local-guest default-action 'drop'
set firewall name local-guest description 'From LOCAL to GUEST'
set firewall name local-guest enable-default-log

# From LOCAL to IOT
set firewall name local-iot default-action 'drop'
set firewall name local-iot description 'From LOCAL to IOT'
set firewall name local-iot enable-default-log
set firewall name local-iot rule 1 action 'accept'
set firewall name local-iot rule 1 description 'Rule: accept_mdns'
set firewall name local-iot rule 1 destination port '1900,5353'
set firewall name local-iot rule 1 destination group network-group 'multicast'
set firewall name local-iot rule 1 protocol 'udp'

# From LOCAL to LAN
set firewall name local-lan default-action 'drop'
set firewall name local-lan description 'From LOCAL to LAN'
set firewall name local-lan enable-default-log

# From LOCAL to SERVERS
set firewall name local-servers default-action 'drop'
set firewall name local-servers description 'From LOCAL to SERVERS'
set firewall name local-servers enable-default-log
set firewall name local-servers rule 1 action 'accept'
set firewall name local-servers rule 1 description 'Rule: accept_bgp'
set firewall name local-servers rule 1 destination port 'bgp'
set firewall name local-servers rule 1 protocol 'tcp'
set firewall name local-servers rule 2 action 'accept'
set firewall name local-servers rule 2 description 'Rule: accept_k8s_api'
set firewall name local-servers rule 2 destination port '6443'
set firewall name local-servers rule 2 protocol 'tcp'
set firewall name local-servers rule 3 action 'accept'
set firewall name local-servers rule 3 description 'Rule: accept_dns'
set firewall name local-servers rule 3 destination port 'domain,domain-s'
set firewall name local-servers rule 3 protocol 'tcp_udp'
set firewall name local-servers rule 4 action 'accept'
set firewall name local-servers rule 4 description 'Rule: accept_vector_syslog'
set firewall name local-servers rule 4 destination group address-group 'k8s_vector_aggregator'
set firewall name local-servers rule 4 destination port '6001'
set firewall name local-servers rule 4 protocol 'tcp'
set firewall name local-servers rule 5 action 'accept'
set firewall name local-servers rule 5 description 'Rule: accept_mdns'
set firewall name local-servers rule 5 destination port '1900,5353'
set firewall name local-servers rule 5 destination group network-group 'multicast'
set firewall name local-servers rule 5 protocol 'udp'

# From LOCAL to SERVICES
set firewall name local-services default-action 'accept'
set firewall name local-services description 'From LOCAL to SERVICES'

# From LOCAL to TRUSTED
set firewall name local-trusted default-action 'drop'
set firewall name local-trusted description 'From LOCAL to TRUSTED'
set firewall name local-trusted enable-default-log
set firewall name local-trusted rule 1 action 'accept'
set firewall name local-trusted rule 1 description 'Rule: accept_igmp'
set firewall name local-trusted rule 1 protocol '2'
set firewall name local-trusted rule 2 action 'accept'
set firewall name local-trusted rule 2 description 'Rule: accept_mdns'
set firewall name local-trusted rule 2 destination port 'mdns'
set firewall name local-trusted rule 2 protocol 'udp'
set firewall name local-trusted rule 2 source port 'mdns'
set firewall name local-trusted rule 3 action 'accept'
set firewall name local-trusted rule 3 description 'Rule: accept_mdns'
set firewall name local-trusted rule 3 destination port '1900,5353'
set firewall name local-trusted rule 3 destination group network-group 'multicast'
set firewall name local-trusted rule 3 protocol 'udp'

# From LOCAL to VIDEO
set firewall name local-video default-action 'drop'
set firewall name local-video description 'From LOCAL to VIDEO'
set firewall name local-video enable-default-log

# From LOCAL to KIDS
set firewall name local-kids default-action 'drop'
set firewall name local-kids description 'From LOCAL to KIDS'
set firewall name local-kids enable-default-log
set firewall name local-kids rule 1 action 'accept'
set firewall name local-kids rule 1 description 'Rule: accept_mdns'
set firewall name local-kids rule 1 destination port 'mdns'
set firewall name local-kids rule 1 protocol 'udp'
set firewall name local-kids rule 1 source port 'mdns'
set firewall name local-kids rule 2 action 'accept'
set firewall name local-kids rule 2 description 'Rule: accept_mdns'
set firewall name local-kids rule 2 destination port '1900,5353'
set firewall name local-kids rule 2 destination group network-group 'multicast'
set firewall name local-kids rule 2 protocol 'udp'

# From LOCAL to WAN
set firewall name local-wan default-action 'accept'
set firewall name local-wan description 'From LOCAL to WAN'

# From SERVERS to GUEST
set firewall name servers-guest default-action 'drop'
set firewall name servers-guest description 'From SERVERS to GUEST'
set firewall name servers-guest enable-default-log

# From SERVERS to IOT
set firewall name servers-iot default-action 'drop'
set firewall name servers-iot description 'From SERVERS to IOT'
set firewall name servers-iot enable-default-log
set firewall name servers-iot rule 1 action 'accept'
set firewall name servers-iot rule 1 description 'Rule: accept_icmp'
set firewall name servers-iot rule 1 protocol 'icmp'
set firewall name servers-iot rule 2 action 'accept'
set firewall name servers-iot rule 2 description 'Rule: accept_k8s_nodes'
set firewall name servers-iot rule 2 protocol 'tcp'
set firewall name servers-iot rule 2 source group address-group 'k8s_nodes'

# From SERVERS to LAN
set firewall name servers-lan default-action 'drop'
set firewall name servers-lan description 'From SERVERS to LAN'
set firewall name servers-lan enable-default-log
set firewall name servers-lan rule 1 action 'accept'
set firewall name servers-lan rule 1 description 'Rule: accept_icmp'
set firewall name servers-lan rule 1 protocol 'icmp'

# From SERVERS to LOCAL
set firewall name servers-local default-action 'drop'
set firewall name servers-local description 'From SERVERS to LOCAL'
set firewall name servers-local enable-default-log
set firewall name servers-local rule 1 action 'accept'
set firewall name servers-local rule 1 description 'Rule: accept_icmp'
set firewall name servers-local rule 1 protocol 'icmp'
set firewall name servers-local rule 2 action 'accept'
set firewall name servers-local rule 2 description 'Rule: accept_ntp'
set firewall name servers-local rule 2 destination port 'ntp'
set firewall name servers-local rule 2 protocol 'udp'
set firewall name servers-local rule 3 action 'accept'
set firewall name servers-local rule 3 description 'Rule: accept_dhcp'
set firewall name servers-local rule 3 destination port '67,68'
set firewall name servers-local rule 3 protocol 'udp'
set firewall name servers-local rule 3 source port '67,68'
set firewall name servers-local rule 4 action 'accept'
set firewall name servers-local rule 4 description 'Rule: accept_bgp'
set firewall name servers-local rule 4 destination port 'bgp'
set firewall name servers-local rule 4 protocol 'tcp'
set firewall name servers-local rule 5 action 'accept'
set firewall name servers-local rule 5 description 'Rule: accept_tftp'
set firewall name servers-local rule 5 destination port '69'
set firewall name servers-local rule 5 protocol 'udp'
set firewall name servers-local rule 6 action 'accept'
set firewall name servers-local rule 6 description 'Rule: accept_node_exporter_from_k8s_nodes'
set firewall name servers-local rule 6 destination port '9100'
set firewall name servers-local rule 6 protocol 'tcp'
set firewall name servers-local rule 6 source group address-group 'k8s_nodes'
set firewall name servers-local rule 7 action 'accept'
set firewall name servers-local rule 7 description 'Rule: accept_speedtest_exporter_from_k8s_nodes'
set firewall name servers-local rule 7 destination port '9798'
set firewall name servers-local rule 7 protocol 'tcp'
set firewall name servers-local rule 7 source group address-group 'k8s_nodes'
set firewall name servers-local rule 8 action 'accept'
set firewall name servers-local rule 8 description 'Rule: accept_mdns'
set firewall name servers-local rule 8 destination port '1900,5353'
set firewall name servers-local rule 8 destination group network-group 'multicast'
set firewall name servers-local rule 8 protocol 'udp'
set firewall name servers-local rule 9 action 'accept'
set firewall name servers-local rule 9 description 'Rule: accept_snmp'
set firewall name servers-local rule 9 destination port 'snmp'
set firewall name servers-local rule 9 protocol 'udp'
set firewall name servers-local rule 10 action 'accept'
set firewall name servers-local rule 10 description 'Rule: accept_podman_exporter'
set firewall name servers-local rule 10 destination port '9882'
set firewall name servers-local rule 10 protocol 'tcp'
set firewall name servers-local rule 11 action 'accept'
set firewall name servers-local rule 11 description 'Rule: accept_smartclt_exporter'
set firewall name servers-local rule 11 destination port '9633'
set firewall name servers-local rule 11 protocol 'tcp'
set firewall name servers-local rule 12 action 'accept'
set firewall name servers-local rule 12 description 'Rule: accept_vnstat_exporter'
set firewall name servers-local rule 12 destination port '8685'
set firewall name servers-local rule 12 protocol 'tcp'

# From SERVERS to SERVICES
set firewall name servers-services default-action 'accept'
set firewall name servers-services description 'From SERVERS to SERVICES'

# From SERVERS to TRUSTED
set firewall name servers-trusted default-action 'drop'
set firewall name servers-trusted description 'From SERVERS to TRUSTED'
set firewall name servers-trusted enable-default-log
set firewall name servers-trusted rule 1 action 'accept'
set firewall name servers-trusted rule 1 description 'Rule: accept_icmp'
set firewall name servers-trusted rule 1 protocol 'icmp'

# From SERVERS to VIDEO
set firewall name servers-video default-action 'drop'
set firewall name servers-video description 'From SERVERS to VIDEO'
set firewall name servers-video enable-default-log
set firewall name servers-video rule 1 action 'accept'
set firewall name servers-video rule 1 description 'Rule: accept_icmp'
set firewall name servers-video rule 1 protocol 'icmp'
set firewall name servers-video rule 2 action 'accept'
set firewall name servers-video rule 2 description 'Rule: accept_k8s_nodes'
set firewall name servers-video rule 2 protocol 'tcp'
set firewall name servers-video rule 2 source group address-group 'k8s_nodes'

# From SERVERS to KIDS
set firewall name servers-kids default-action 'drop'
set firewall name servers-kids description 'From SERVER to KIDS'
set firewall name servers-kids enable-default-log
set firewall name servers-kids rule 1 action 'accept'
set firewall name servers-kids rule 1 description 'Rule: accept_icmp'
set firewall name servers-kids rule 1 protocol 'icmp'

# From SERVERS to WAN
set firewall name servers-wan default-action 'accept'
set firewall name servers-wan description 'From SERVERS to WAN'

# From SERVICES to GUEST
set firewall name services-guest default-action 'drop'
set firewall name services-guest description 'From SERVICES to GUEST'
set firewall name services-guest enable-default-log

# From SERVICES to IOT
set firewall name services-iot default-action 'drop'
set firewall name services-iot description 'From SERVICES to IOT'
set firewall name services-iot enable-default-log
set firewall name services-iot rule 1 action 'accept'
set firewall name services-iot rule 1 description 'Rule: accept_icmp'
set firewall name services-iot rule 1 protocol 'icmp'

# From SERVICES to LAN
set firewall name services-lan default-action 'drop'
set firewall name services-lan description 'From SERVICES to LAN'
set firewall name services-lan enable-default-log

# From SERVICES to LOCAL
set firewall name services-local default-action 'drop'
set firewall name services-local description 'From SERVICES to LOCAL'
set firewall name services-local enable-default-log
set firewall name services-local rule 1 action 'accept'
set firewall name services-local rule 1 description 'Rule: accept_ntp'
set firewall name services-local rule 1 destination port 'ntp'
set firewall name services-local rule 1 protocol 'udp'
set firewall name services-local rule 2 action 'accept'
set firewall name services-local rule 2 description 'Rule: accept_dhcp'
set firewall name services-local rule 2 destination port '67,68'
set firewall name services-local rule 2 protocol 'udp'
set firewall name services-local rule 2 source port '67,68'

# From SERVICES to SERVERS
set firewall name services-servers default-action 'accept'
set firewall name services-servers description 'From SERVICES to SERVERS'

# From SERVICES to TRUSTED
set firewall name services-trusted default-action 'drop'
set firewall name services-trusted description 'From SERVICES to TRUSTED'
set firewall name services-trusted enable-default-log
set firewall name services-trusted rule 1 action 'accept'
set firewall name services-trusted rule 1 description 'Rule: accept_icmp'
set firewall name services-trusted rule 1 protocol 'icmp'

# From SERVICES to VIDEO
set firewall name services-video default-action 'drop'
set firewall name services-video description 'From SERVICES to VIDEO'
set firewall name services-video enable-default-log
set firewall name services-video rule 1 action 'accept'
set firewall name services-video rule 1 description 'Rule: accept_icmp'
set firewall name services-video rule 1 protocol 'icmp'

# From SERVICES to KIDS
set firewall name services-kids default-action 'drop'
set firewall name services-kids description 'From SERVICES to KIDS'
set firewall name services-kids enable-default-log

# From SERVICES to WAN
set firewall name services-wan default-action 'accept'
set firewall name services-wan description 'From SERVICES to WAN'

# From TRUSTED to GUEST
set firewall name trusted-guest default-action 'drop'
set firewall name trusted-guest description 'From TRUSTED to GUEST'
set firewall name trusted-guest enable-default-log

# From TRUSTED to IOT
set firewall name trusted-iot default-action 'accept'
set firewall name trusted-iot description 'From TRUSTED to IOT'

# From TRUSTED to LAN
set firewall name trusted-lan default-action 'accept'
set firewall name trusted-lan description 'From TRUSTED to LAN'

# From TRUSTED to LOCAL
set firewall name trusted-local default-action 'drop'
set firewall name trusted-local description 'From TRUSTED to LOCAL'
set firewall name trusted-local enable-default-log
set firewall name trusted-local rule 1 action 'accept'
set firewall name trusted-local rule 1 description 'Rule: accept_icmp'
set firewall name trusted-local rule 1 protocol 'icmp'
set firewall name trusted-local rule 2 action 'accept'
set firewall name trusted-local rule 2 description 'Rule: accept_ssh'
set firewall name trusted-local rule 2 destination port 'ssh'
set firewall name trusted-local rule 2 protocol 'tcp'
set firewall name trusted-local rule 3 action 'accept'
set firewall name trusted-local rule 3 description 'Rule: accept_ntp'
set firewall name trusted-local rule 3 destination port 'ntp'
set firewall name trusted-local rule 3 protocol 'udp'
set firewall name trusted-local rule 4 action 'accept'
set firewall name trusted-local rule 4 description 'Rule: accept_dhcp'
set firewall name trusted-local rule 4 destination port '67,68'
set firewall name trusted-local rule 4 protocol 'udp'
set firewall name trusted-local rule 4 source port '67,68'
set firewall name trusted-local rule 5 action 'accept'
set firewall name trusted-local rule 5 description 'Rule: accept_igmp'
set firewall name trusted-local rule 5 protocol '2'
set firewall name trusted-local rule 6 action 'accept'
set firewall name trusted-local rule 6 description 'Rule: accept_mdns'
set firewall name trusted-local rule 6 destination port 'mdns'
set firewall name trusted-local rule 6 protocol 'udp'
set firewall name trusted-local rule 6 source port 'mdns'
set firewall name trusted-local rule 7 action 'accept'
set firewall name trusted-local rule 7 description 'Rule: accept_vyos_api'
set firewall name trusted-local rule 7 destination port '8443'
set firewall name trusted-local rule 7 protocol 'tcp'
set firewall name trusted-local rule 8 action 'accept'
set firewall name trusted-local rule 8 description 'Rule: accept_mdns'
set firewall name trusted-local rule 8 destination port '1900,5353'
set firewall name trusted-local rule 8 destination group network-group 'multicast'
set firewall name trusted-local rule 8 protocol 'udp'
set firewall name trusted-local rule 9 description 'Rule: accept vnstat'
set firewall name trusted-local rule 9 action 'accept'
set firewall name trusted-local rule 9 destination port '8685'
set firewall name trusted-local rule 9 protocol 'tcp'

# From TRUSTED to SERVERS
set firewall name trusted-servers default-action 'accept'
set firewall name trusted-servers description 'From TRUSTED to SERVERS'

# From TRUSTED to SERVICES
set firewall name trusted-services default-action 'accept'
set firewall name trusted-services description 'From TRUSTED to SERVICES'

# From TRUSTED to VIDEO
set firewall name trusted-video default-action 'drop'
set firewall name trusted-video description 'From TRUSTED to VIDEO'

# From TRUSTED to KIDS
set firewall name trusted-kids default-action 'drop'
set firewall name trusted-kids description 'From TRUSTED to KIDS'
set firewall name trusted-kids enable-default-log

# From TRUSTED to WAN
set firewall name trusted-wan default-action 'accept'
set firewall name trusted-wan description 'From TRUSTED to WAN'

# From VIDEO to GUEST
set firewall name video-guest default-action 'drop'
set firewall name video-guest description 'From VIDEO to GUEST'
set firewall name video-guest enable-default-log

# From VIDEO to IOT
set firewall name video-iot default-action 'drop'
set firewall name video-iot description 'From VIDEO to IOT'
set firewall name video-iot enable-default-log

# From VIDEO to LAN
set firewall name video-lan default-action 'drop'
set firewall name video-lan description 'From VIDEO to LAN'
set firewall name video-lan enable-default-log

# From VIDEO to LOCAL
set firewall name video-local default-action 'drop'
set firewall name video-local description 'From VIDEO to LOCAL'
set firewall name video-local enable-default-log
set firewall name video-local rule 1 action 'accept'
set firewall name video-local rule 1 description 'Rule: accept_ntp'
set firewall name video-local rule 1 destination port 'ntp'
set firewall name video-local rule 1 protocol 'udp'
set firewall name video-local rule 2 action 'accept'
set firewall name video-local rule 2 description 'Rule: accept_dhcp'
set firewall name video-local rule 2 destination port '67,68'
set firewall name video-local rule 2 protocol 'udp'
set firewall name video-local rule 2 source port '67,68'

# From VIDEO to SERVERS
set firewall name video-servers default-action 'drop'
set firewall name video-servers description 'From VIDEO to SERVERS'
set firewall name video-servers enable-default-log

# From VIDEO to SERVICES
set firewall name video-services default-action 'accept'
set firewall name video-services description 'From VIDEO to SERVICES'
set firewall name video-services rule 1 action 'accept'
set firewall name video-services rule 1 description 'Rule: accept_dns'
set firewall name video-services rule 1 destination port 'domain,domain-s'
set firewall name video-services rule 1 protocol 'tcp_udp'

# From VIDEO to TRUSTED
set firewall name video-trusted default-action 'drop'
set firewall name video-trusted description 'From VIDEO to TRUSTED'
set firewall name video-trusted enable-default-log

# From VIDEO to KIDS
set firewall name video-kids default-action 'drop'
set firewall name video-kids description 'From VIDEO to KIDS'
set firewall name video-kids enable-default-log

# From VIDEO to WAN
set firewall name video-wan default-action 'drop'
set firewall name video-wan description 'From VIDEO to WAN'

# From WAN to GUEST
set firewall name wan-guest default-action 'drop'
set firewall name wan-guest description 'From WAN to GUEST'
set firewall name wan-guest enable-default-log

# From WAN to IOT
set firewall name wan-iot default-action 'drop'
set firewall name wan-iot description 'From WAN to IOT'
set firewall name wan-iot enable-default-log

# From WAN to LAN
set firewall name wan-lan default-action 'drop'
set firewall name wan-lan description 'From WAN to LAN'
set firewall name wan-lan enable-default-log

# From WAN to LOCAL
set firewall name wan-local default-action 'drop'
set firewall name wan-local description 'From WAN to LOCAL'
set firewall name wan-local enable-default-log
set firewall name wan-local rule 1 action 'accept'
set firewall name wan-local rule 1 description 'Rule: accept_wireguard'
set firewall name wan-local rule 1 destination port '51820'
set firewall name wan-local rule 1 protocol 'udp'
# set firewall name wan-local rule 10 action 'accept'
# set firewall name wan-local rule 10 protocol 'icmp'
# set firewall name wan-local rule 10 state established 'enable'
# set firewall name wan-local rule 10 state new 'enable'
# set firewall name wan-local rule 10 state related 'enable'

# From WAN to SERVERS
set firewall name wan-servers default-action 'drop'
set firewall name wan-servers description 'From WAN to SERVERS'
set firewall name wan-servers enable-default-log
set firewall name wan-servers rule 2 action 'accept'
set firewall name wan-servers rule 2 description 'Rule: factorio_servers'
set firewall name wan-servers rule 2 destination group address-group 'k8s_factorio'
set firewall name wan-servers rule 2 destination port '34203'
set firewall name wan-servers rule 2 protocol 'udp'
set firewall name wan-servers rule 3 action 'accept'
set firewall name wan-servers rule 3 description 'Rule: inspircd client'
set firewall name wan-servers rule 3 destination group address-group 'k8s_inspircd'
set firewall name wan-servers rule 3 destination port '6697'
set firewall name wan-servers rule 3 protocol 'tcp'
set firewall name wan-servers rule 4 action 'accept'
set firewall name wan-servers rule 4 description 'Rule: inspircd server'
set firewall name wan-servers rule 4 destination group address-group 'k8s_inspircd'
set firewall name wan-servers rule 4 destination port '7001'
set firewall name wan-servers rule 4 protocol 'tcp'
set firewall name wan-servers rule 5 action 'accept'
set firewall name wan-servers rule 5 description 'Rule: qbittorrent server'
set firewall name wan-servers rule 5 destination group address-group 'nas'
set firewall name wan-servers rule 5 destination port '32189'
set firewall name wan-servers rule 5 protocol 'tcp_udp'
set firewall name wan-servers rule 6 action 'accept'
set firewall name wan-servers rule 6 description 'Rule: qbittorrent server'
set firewall name wan-servers rule 6 destination group address-group 'nas'
set firewall name wan-servers rule 6 destination port '32190'
set firewall name wan-servers rule 6 protocol 'tcp_udp'
set firewall name wan-servers rule 7 action 'accept'
set firewall name wan-servers rule 7 description 'Rule: qbittorrent server'
set firewall name wan-servers rule 7 destination group address-group 'nas'
set firewall name wan-servers rule 7 destination port '32191'
set firewall name wan-servers rule 7 protocol 'tcp_udp'

# From WAN to SERVICES
set firewall name wan-services default-action 'drop'
set firewall name wan-services description 'From WAN to SERVICES'
set firewall name wan-services enable-default-log

# From WAN to TRUSTED
set firewall name wan-trusted default-action 'drop'
set firewall name wan-trusted description 'From WAN to TRUSTED'
set firewall name wan-trusted enable-default-log

# From WAN to VIDEO
set firewall name wan-video default-action 'drop'
set firewall name wan-video description 'From WAN to VIDEO'
set firewall name wan-video enable-default-log

# From WAN to KIDS
set firewall name wan-kids default-action 'drop'
set firewall name wan-kids description 'From WAN to KIDS'
set firewall name wan-kids enable-default-log
