# Gateway
set system static-host-mapping host-name gateway.trux.dev inet 10.8.10.1
set system static-host-mapping host-name gateway.trux.dev alias vpn.trux.dev
set system static-host-mapping host-name gateway.trux.dev alias ipv4.trux.dev

# Unifi controller
set system static-host-mapping host-name unifi inet 10.5.0.10

# NAS
set system static-host-mapping host-name george.trux.dev inet 10.1.1.11
set system static-host-mapping host-name george.trux.dev alias nas.trux.dev
set system static-host-mapping host-name george.trux.dev alias garage.trux.dev
set system static-host-mapping host-name george.trux.dev alias s3.trux.dev

# Kubernetes hosts
set system static-host-mapping host-name delta.trux.dev inet 10.1.1.31
set system static-host-mapping host-name enigma.trux.dev inet 10.1.1.32
set system static-host-mapping host-name felix.trux.dev inet 10.1.1.33

# Kubernetes cluster VIP
set system static-host-mapping host-name hegira.trux.dev inet 10.8.20.49

# Other hosts
set system static-host-mapping host-name technocore.trux.dev inet 10.1.1.52
set system static-host-mapping host-name technocore.trux.dev alias pikvm.trux.dev
