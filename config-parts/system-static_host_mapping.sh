# Gateway
set system static-host-mapping host-name gateway.natallan.com inet 10.8.10.1
set system static-host-mapping host-name gateway.natallan.com alias vpn.trux.dev
set system static-host-mapping host-name gateway.natallan.com alias ipv4.trux.dev

# Unifi controller
set system static-host-mapping host-name unifi inet 10.5.0.10

# NAS
set system static-host-mapping host-name george.natallan.com inet 10.1.1.11
set system static-host-mapping host-name george.natallan.com alias nas.trux.dev
set system static-host-mapping host-name george.natallan.com alias garage.trux.dev
set system static-host-mapping host-name george.natallan.com alias s3.trux.dev

# Kubernetes hosts
set system static-host-mapping host-name delta.natallan.com inet 10.1.1.31
set system static-host-mapping host-name enigma.natallan.com inet 10.1.1.32
set system static-host-mapping host-name felix.natallan.com inet 10.1.1.33

# Kubernetes cluster VIP
set system static-host-mapping host-name hegira.natallan.com inet 10.8.20.49

# Other hosts
set system static-host-mapping host-name technocore.natallan.com inet 10.1.1.52
set system static-host-mapping host-name technocore.natallan.com alias pikvm.trux.dev
