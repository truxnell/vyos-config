#!/bin/vbash

# Container networks
set container network services prefix '10.5.0.0/24'

# cloudflare-ddns

set container name cloudflare-ddns allow-host-networks
set container name cloudflare-ddns environment CF_API_TOKEN value "${SECRET_CLOUDFLARE_DYNDNS_TOKEN}"
set container name cloudflare-ddns environment DOMAINS value 'irc.voltaicforge.com,mel1.trux.dev'
set container name cloudflare-ddns environment IP6_PROVIDER value "none"
set container name cloudflare-ddns environment TZ value 'Australia/Melbourne'
set container name cloudflare-ddns environment PGID value "1000"
set container name cloudflare-ddns environment PUID value "1000"
set container name cloudflare-ddns image 'docker.io/favonia/cloudflare-ddns:1.11.0'
set container name cloudflare-ddns memory '0'
set container name cloudflare-ddns restart 'on-failure'
set container name cloudflare-ddns shared-memory '0'

# wildcard certificate
set container name lego-auto image 'ghcr.io/bjw-s/lego-auto:v0.1.0'
set container name lego-auto memory '0'
set container name lego-auto allow-host-networks
set container name lego-auto shared-memory '0'
set container name lego-auto restart 'on-failure'
set container name lego-auto environment TZ value 'Australia/Melbourne'
set container name lego-auto environment LA_DATADIR value '/config'
set container name lego-auto environment LA_CACHEDIR value '/config/.cache'
set container name lego-auto environment LA_EMAIL value 'admin@natallan.com'
set container name lego-auto environment LA_PROVIDER value 'cloudflare'
set container name lego-auto environment LA_DOMAINS value '*.trux.dev'
set container name lego-auto environment CF_DNS_API_TOKEN value "${SECRET_CLOUDFLARE_API_TOKEN}"
set container name lego-auto volume datadir source '/config/secrets/certs/_.trux.dev'
set container name lego-auto volume datadir destination '/config'
set container name lego-auto volume datadir mode 'rw'

# bind
set container name bind cap-add 'net-bind-service'
set container name bind image 'docker.io/internetsystemsconsortium/bind9:9.19'
set container name bind command '/usr/sbin/named -4 -f -c /etc/bind/named.conf -u bind'
set container name bind memory '0'
set container name bind network services address '10.5.0.3'
set container name bind restart 'on-failure'
set container name bind shared-memory '0'
set container name bind volume config destination '/etc/bind'
set container name bind volume config source '/config/containers/bind/config'
set container name bind volume config mode 'ro'
set container name bind volume cache source '/tmp/bind/cache'
set container name bind volume cache destination '/var/cache/bind'
set container name bind volume cache mode 'rw'

# dnsdist
set container name dnsdist cap-add 'net-bind-service'
set container name dnsdist environment TZ value 'Australia/Melbourne'
set container name dnsdist image 'docker.io/powerdns/dnsdist-18:1.8.0'
set container name dnsdist arguments '--log-timestamps'
set container name dnsdist memory '0'
set container name dnsdist network services address '10.5.0.4'
set container name dnsdist restart 'on-failure'
set container name dnsdist shared-memory '0'
set container name dnsdist volume config destination '/etc/dnsdist/dnsdist.conf'
set container name dnsdist volume config source '/config/containers/dnsdist/config/dnsdist.conf'
set container name dnsdist volume config mode 'ro'

# node-exporter
set container name node-exporter environment procfs value '/host/proc'
set container name node-exporter environment rootfs value '/host/rootfs'
set container name node-exporter environment sysfs value '/host/sys'
set container name node-exporter image 'quay.io/prometheus/node-exporter:v1.6.1'
set container name node-exporter memory '0'
set container name node-exporter allow-host-networks
set container name node-exporter restart 'on-failure'
set container name node-exporter shared-memory '0'
set container name node-exporter volume procfs destination '/host/proc'
set container name node-exporter volume procfs mode 'ro'
set container name node-exporter volume procfs source '/proc'
set container name node-exporter volume rootfs destination '/host/rootfs'
set container name node-exporter volume rootfs mode 'ro'
set container name node-exporter volume rootfs source '/'
set container name node-exporter volume sysfs destination '/host/sys'
set container name node-exporter volume sysfs mode 'ro'
set container name node-exporter volume sysfs source '/sys'

# haproxy-k8s-api
set container name haproxy-k8s-api image 'docker.io/library/haproxy:2.8.2'
set container name haproxy-k8s-api memory '0'
set container name haproxy-k8s-api network services address '10.5.0.2'
set container name haproxy-k8s-api restart 'on-failure'
set container name haproxy-k8s-api shared-memory '0'
set container name haproxy-k8s-api volume config destination '/usr/local/etc/haproxy/haproxy.cfg'
set container name haproxy-k8s-api volume config source '/config/containers/haproxy/config/haproxy.cfg'
set container name haproxy-k8s-api volume config mode 'ro'

# speedtest-exporter
set container name speedtest-exporter image 'ghcr.io/miguelndecarvalho/speedtest-exporter:v3.5.4'
set container name speedtest-exporter memory '0'
set container name speedtest-exporter allow-host-networks
set container name speedtest-exporter restart 'on-failure'
set container name speedtest-exporter shared-memory '0'

# unifi
set container name unifi environment RUNAS_UID0 value 'false'
set container name unifi environment TZ value 'Australia/Melbourne'
set container name unifi environment UNIFI_GID value '999'
set container name unifi environment UNIFI_STDOUT value 'true'
set container name unifi environment UNIFI_UID value '999'
set container name unifi image 'ghcr.io/jacobalberty/unifi-docker:v7.4.162'
set container name unifi memory '0'
set container name unifi network services address '10.5.0.10'
set container name unifi restart 'on-failure'
set container name unifi shared-memory '0'
set container name unifi volume data destination '/unifi'
set container name unifi volume data source '/config/containers/unifi'

# smtp-relay
set container name smtp-relay image 'ghcr.io/foxcpp/maddy:0.7.0'
set container name smtp-relay environment SMTP_DOMAIN value "${SECRET_SMTP_FROM_DOMAIN}"
set container name smtp-relay environment SMTP_PASSWORD value "${SECRET_SMTP_PASSWORD}"
set container name smtp-relay environment SMTP_PORT value "${SECRET_SMTP_PORT}"
set container name smtp-relay environment SMTP_SERVER value "${SECRET_SMTP_SERVER}"
set container name smtp-relay environment SMTP_USERNAME value "${SECRET_SMTP_USERNAME}"
set container name smtp-relay environment DEBUG value 'no'
set container name smtp-relay restart 'on-failure'
set container name smtp-relay memory '0'
set container name smtp-relay network services address '10.5.0.11'
set container name smtp-relay shared-memory '0'
set container name smtp-relay volume smtp-relay-config destination '/data/maddy.conf'
set container name smtp-relay volume smtp-relay-config mode 'ro'
set container name smtp-relay volume smtp-relay-config source '/config/containers/smtp-relay/config/maddy.conf'

# vnstat
set container name vnstat allow-host-networks
set container name vnstat environment EXCLUDE_PATTERN value '^docker|^veth|^br-|^lxc|^eth[1234]'
set container name vnstat environment TZ value 'Australia/Melbourne'
set container name vnstat image 'ghcr.io/vergoh/vnstat:2.10'
set container name vnstat memory '0'
set container name vnstat shared-memory '0'
set container name vnstat volume vnstat-data source '/config/containers/vnstat'
set container name vnstat volume vnstat-data destination '/var/lib/vnstat'
set container name vnstat volume vnstat-data mode 'rw'

# podman-exporter
set container name podman-exporter allow-host-networks
set container name podman-exporter environment CONTAINER_HOST value 'tcp://10.8.10.1:8888'
set container name podman-exporter image 'quay.io/navidys/prometheus-podman-exporter:v1.3.0'
set container name podman-exporter memory '0'
set container name podman-exporter shared-memory '0'

# Smartctl-exporter

# set container name smartctl-exporter allow-host-networks
# set container name smartctl-exporter image 'quay.io/prometheuscommunity/smartctl-exporter:v0.10.0'
# set container name smartctl-exporter memory '0'
# set container name smartctl-exporter shared-memory '0'
# set container name smartctl-exporter volume smartctl-exporter-devfs destination '/hostdev'
# set container name smartctl-exporter volume smartctl-exporter-devfs mode 'ro'
# set container name smartctl-exporter volume smartctl-exporter-devfs source '/dev'

# Gatus
set container name gatus cap-add 'net-bind-service'
set container name gatus cap-add 'net-raw'
set container name gatus image 'ghcr.io/twin/gatus:v5.5.1'
set container name gatus memory '0'
set container name gatus network services address '10.5.0.12'
set container name gatus shared-memory '0'
set container name gatus volume gatus-config source '/config/containers/gatus/config/config.yaml'
set container name gatus volume gatus-config destination '/config/config.yaml'
set container name gatus volume gatus-config mode 'ro'
set container name gatus volume gatus-certificate-crt source '/config/secrets/certs/_.trux.dev/cert.pem'
set container name gatus volume gatus-certificate-crt destination '/config/certificate.crt'
set container name gatus volume gatus-certificate-crt mode 'ro'
set container name gatus volume gatus-certificate-key source '/config/secrets/certs/_.trux.dev/privkey.pem'
set container name gatus volume gatus-certificate-key destination '/config/certificate.key'
set container name gatus volume gatus-certificate-key mode 'ro'

# Netboot-xyz

set container name netboot-xyz allow-host-networks
set container name netboot-xyz image 'ghcr.io/netbootxyz/netbootxyz:0.6.7-nbxyz25'
set container name netboot-xyz memory '0'
set container name netboot-xyz shared-memory '0'
