# #!/bin/vbash
#
# # General configuration
# set firewall state-policy established action 'accept'
# set firewall state-policy invalid action 'drop'
# set firewall state-policy related action 'accept'
#
# # Address Groups
# # set firewall group address-group 3d_printer_controllers address '10.1.3.56'
#
# # set firewall group address-group android_tv_players address '10.1.3.16'
#
# # set firewall group address-group ereaders address '10.1.3.51'
#
# # set firewall group address-group esp address '10.1.3.21'
#
# set firewall group address-group k8s_api address '10.8.20.49'
#
# set firewall group address-group k8s_ingress address '10.8.20.210'
#
# set firewall group address-group k8s_ingress_allowed address '10.1.3.35'
# set firewall group address-group k8s_ingress_allowed address '10.1.3.36'
#
# set firewall group address-group k8s_mqtt address '10.8.20.222'
#
# set firewall group address-group k8s_nodes address '10.8.20.40'
# set firewall group address-group k8s_nodes address '10.8.20.42'
# set firewall group address-group k8s_nodes address '10.8.20.44'
#
# set firewall group address-group k8s_plex address '10.8.20.213'
#
# set firewall group address-group k8s_vector_aggregator address '10.8.20.220'
#
# set firewall group address-group mqtt_clients address '10.1.2.21'
# set firewall group address-group mqtt_clients address '10.1.2.32'
# set firewall group address-group mqtt_clients address '10.1.3.18'
# set firewall group address-group mqtt_clients address '10.1.3.22'
# set firewall group address-group mqtt_clients address '10.1.3.56'
#
# set firewall group address-group nas address '10.8.20.11'
#
# set firewall group address-group plex_clients address '10.1.2.21'
# set firewall group address-group plex_clients address '10.1.2.31'
# set firewall group address-group plex_clients address '10.1.2.32'
# set firewall group address-group plex_clients address '10.1.2.33'
# set firewall group address-group plex_clients address '10.1.2.34'
# set firewall group address-group plex_clients address '10.1.2.35'
# set firewall group address-group plex_clients address '10.1.2.36'
# set firewall group address-group plex_clients address '10.1.3.16'
#
# set firewall group address-group printers address '10.1.3.55'
#
# set firewall group address-group printer_allowed address '192.168.2.11'
#
# set firewall group address-group scanners address '10.1.3.55'
#
# set firewall group address-group unifi_devices address '10.1.0.11'
# set firewall group address-group unifi_devices address '10.1.0.12'
# set firewall group address-group unifi_devices address '10.1.0.13'
# set firewall group address-group unifi_devices address '10.1.0.21'
# set firewall group address-group unifi_devices address '10.1.0.22'
# set firewall group address-group unifi_devices address '10.1.0.23'
# set firewall group address-group unifi_devices address '10.1.0.24'
#
# set firewall group address-group vector_journald_allowed address '10.1.3.56'
# set firewall group address-group vector_journald_allowed address '10.1.3.60'
#
# set firewall group address-group vyos_chronyd address '10.5.0.5'
#
# set firewall group address-group vyos_coredns address '10.5.0.3'
#
# set firewall group address-group vyos_dnsdist address '10.5.0.4'
#
# set firewall group address-group vyos_unifi address '10.5.0.10'
#
# set firewall group address-group wall_displays address '10.1.3.53'
# set firewall group address-group wall_displays address '10.1.3.54'
#
# # Network groups
# set firewall group network-group cloudflare-ipv4 network '173.245.48.0/20'
# set firewall group network-group cloudflare-ipv4 network '103.21.244.0/22'
# set firewall group network-group cloudflare-ipv4 network '103.22.200.0/22'
# set firewall group network-group cloudflare-ipv4 network '103.31.4.0/22'
# set firewall group network-group cloudflare-ipv4 network '141.101.64.0/18'
# set firewall group network-group cloudflare-ipv4 network '108.162.192.0/18'
# set firewall group network-group cloudflare-ipv4 network '190.93.240.0/20'
# set firewall group network-group cloudflare-ipv4 network '188.114.96.0/20'
# set firewall group network-group cloudflare-ipv4 network '197.234.240.0/22'
# set firewall group network-group cloudflare-ipv4 network '198.41.128.0/17'
# set firewall group network-group cloudflare-ipv4 network '162.158.0.0/15'
# set firewall group network-group cloudflare-ipv4 network '104.16.0.0/13'
# set firewall group network-group cloudflare-ipv4 network '104.24.0.0/14'
# set firewall group network-group cloudflare-ipv4 network '172.64.0.0/13'
# set firewall group network-group cloudflare-ipv4 network '131.0.72.0/22'
#
# set firewall group network-group k8s_services network '10.45.0.0/16'
#
# # Port groups
# set firewall group port-group wireguard port '51820'
