# Gateway
set system static-host-mapping host-name gateway.natallan.com inet 10.8.10.1
set system static-host-mapping host-name gateway.natallan.com alias vpn.trux.dev
set system static-host-mapping host-name gateway.natallan.com alias ipv4.trux.dev

# Unifi controller
set system static-host-mapping host-name unifi inet 10.5.0.10
set system static-host-mapping host-name unifi.natallan.com inet 10.5.0.10

# Smtp-relay
set system static-host-mapping host-name smtp-relay inet 10.5.0.11
set system static-host-mapping host-name smtp-relay.natallan.com inet 10.5.0.11
set system static-host-mapping host-name smtp-relay.trux.dev inet 10.5.0.11

# NAS
set system static-host-mapping host-name helios.natallan.com inet 10.8.20.11
set system static-host-mapping host-name helios.natallan.com alias nas.natallan.com
set system static-host-mapping host-name helios.natallan.com alias s3.trux.dev
set system static-host-mapping host-name helios.natallan.com alias george.trux.dev

# Kubernetes hosts
set system static-host-mapping host-name xerxes.natallan.com inet 10.8.20.40
set system static-host-mapping host-name shodan.natallan.com inet 10.8.20.42
set system static-host-mapping host-name icarus.natallan.com inet 10.8.20.44

# Kubernetes cluster VIP
set system static-host-mapping host-name hegira.natallan.com inet 10.5.0.2

# Kubernetes LB Ip's

set system static-host-mapping host-name vector.trux.dev inet 10.8.20.220
set system static-host-mapping host-name mqtt.trux.dev inet 10.8.20.222
set system static-host-mapping host-name irc.truxnell.net inet 10.8.20.223

# truxnell.net
set system static-host-mapping host-name fedi.truxnell.net inet 10.8.20.210

# NAS ingress
set system static-host-mapping host-name syncthing.trux.dev inet 10.8.20.11
set system static-host-mapping host-name minio.trux.dev inet 10.8.20.11
set system static-host-mapping host-name s3.trux.dev inet 10.8.20.11

# Other hosts
set system static-host-mapping host-name technocore.natallan.com inet 10.8.20.60
set system static-host-mapping host-name technocore.natallan.com alias pikvm.trux.dev
set system static-host-mapping host-name technocore.natallan.com alias pikvm.natallan.com

set system static-host-mapping host-name prusa.natallan.com inet 10.8.30.120
