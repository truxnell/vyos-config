#!/bin/vbash

# General configuration
set firewall state-policy established action 'accept'
set firewall state-policy invalid action 'drop'
set firewall state-policy related action 'accept'

# K8s groups
set firewall group address-group k8s_nodes address '10.8.20.40'
set firewall group address-group k8s_nodes address '10.8.20.42'
set firewall group address-group k8s_nodes address '10.8.20.44'

set firewall group address-group k8s_ingress address '10.8.20.202'

# Network groups
set firewall group network-group cloudflare-ipv4 network '173.245.48.0/20'
set firewall group network-group cloudflare-ipv4 network '103.21.244.0/22'
set firewall group network-group cloudflare-ipv4 network '103.22.200.0/22'
set firewall group network-group cloudflare-ipv4 network '103.31.4.0/22'
set firewall group network-group cloudflare-ipv4 network '141.101.64.0/18'
set firewall group network-group cloudflare-ipv4 network '108.162.192.0/18'
set firewall group network-group cloudflare-ipv4 network '190.93.240.0/20'
set firewall group network-group cloudflare-ipv4 network '188.114.96.0/20'
set firewall group network-group cloudflare-ipv4 network '197.234.240.0/22'
set firewall group network-group cloudflare-ipv4 network '198.41.128.0/17'
set firewall group network-group cloudflare-ipv4 network '162.158.0.0/15'
set firewall group network-group cloudflare-ipv4 network '104.16.0.0/13'
set firewall group network-group cloudflare-ipv4 network '104.24.0.0/14'
set firewall group network-group cloudflare-ipv4 network '172.64.0.0/13'
set firewall group network-group cloudflare-ipv4 network '131.0.72.0/22'

set firewall group network-group multicast network '224.0.0.0/4'

set firewall group address-group k8s_plex address '10.8.20.213'
set firewall group address-group k8s_mqtt address '10.8.20.222'
set firewall group address-group k8s_factorio address '10.8.20.230'
set firewall group address-group k8s_vector_aggregator address '10.8.20.220'
set firewall group address-group k8s_inspircd address '10.8.20.223'

set firewall group address-group nas address '10.8.20.11'

set firewall group address-group plex_clients address '10.8.40.1'
set firewall group address-group plex_clients address '10.8.40.2'
set firewall group address-group plex_clients address '10.8.40.3'
set firewall group address-group plex_clients address '10.8.40.4'
set firewall group address-group plex_clients address '10.8.30.10'
set firewall group address-group plex_clients address '10.8.30.11'
set firewall group address-group plex_clients address '10.8.30.12'
set firewall group address-group plex_clients address '10.8.30.80'

set firewall group address-group mqtt_clients address '10.8.30.50'
set firewall group address-group mqtt_clients address '10.8.30.52'
set firewall group address-group mqtt_clients address '10.8.30.100'
set firewall group address-group mqtt_clients address '10.8.30.120'
set firewall group address-group mqtt_clients address '10.8.30.140'
set firewall group address-group mqtt_clients address '10.8.30.141'

set firewall group address-group wall_displays address '10.8.30.100'

set firewall group address-group k8s_ingress_allowed address '10.8.30.90'
set firewall group address-group k8s_ingress_allowed address '10.8.30.10'

set firewall group address-group vector_journald_allowed address '10.8.30.120'
