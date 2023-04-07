#!/bin/vbash

set system domain-name 'natallan.com'
set system host-name 'gateway'

set system ipv6 disable-forwarding

set system login user vyos authentication public-keys personal key 'AAAAC3NzaC1lZDI1NTE5AAAAIMZS9J1ydflZ4iJdJgO8+vnN8nNSlEwyn9tbWU9OcysW'
set system login user vyos authentication public-keys personal type 'ssh-ed25519'

set system name-server '1.1.1.1'

set system sysctl parameter kernel.pty.max value '24000'

set system syslog host 10.8.20.220 facility kern level 'warning'
set system syslog host 10.8.20.220 facility kern protocol 'tcp'
set system syslog host 10.8.20.220 port '6002'

set system task-scheduler task uptime-kuma-ping crontab-spec '* * * * *'
set system task-scheduler task uptime-kuma-ping executable path '/config/scripts/uptime-kuma.sh'

set system time-zone 'Australia/Melbourne'
