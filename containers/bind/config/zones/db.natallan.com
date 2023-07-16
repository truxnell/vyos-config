
; Make sure to update the epoch time in the SOA records so coreDNS picks up the changes automatically
; https://www.epochconverter.com/

; SOA Records
$TTL 3600
$ORIGIN bjw-s.tech.
@ 3600 IN SOA gateway.bjw-s.tech. gateway.bjw-s.tech. (
  1682790096         ; serial number (epoch timestamp)
  7200               ; refresh period
  3600               ; retry period
  1209600            ; expire time
  3600               ; minimum ttl
)

; NS Records
@                             IN  NS gateway.bjw-s.tech.

; LAN
gateway                       IN  A  10.8.10.1

; Servers
helios                        IN  A  10.8.20.11
xerxes                        IN  A  10.8.20.40
shodan                        IN  A  10.8.20.42
icarus                        IN  A  10.8.20.44
technocore                    IN  A  10.8.20.60


; IOT
attic-office-3dprinter-plug   IN  A  10.1.3.33
attic-office-desk-plug        IN  A  10.1.3.31
attic-office-hue-bridge       IN  A  10.1.3.24
attic-office-speaker-esp      IN  A  10.1.3.36
bedroom-eva-sonos             IN  A  10.1.3.65
bernd-ereader                 IN  A  10.1.3.51
garage-tablet                 IN  A  10.1.3.54
garden-wlanthermo             IN  A  10.1.3.21
hallway-tablet                IN  A  10.1.3.53
hallway-p1reader-esp          IN  A  10.1.3.45
hallway-tado-bridge           IN  A  10.1.3.23
hallway-zigbee-adapter        IN  A  10.1.3.46
kitchen-coffeemaker           IN  A  10.1.3.13
kitchen-oven                  IN  A  10.1.3.12
kitchen-sonos                 IN  A  10.1.3.61
livingroom-airpurifier        IN  A  10.1.3.19
livingroom-receiver           IN  A  10.1.3.17
livingroom-shield             IN  A  10.1.3.16
livingroom-sonos              IN  A  10.1.3.63
livingroom-tv                 IN  A  10.1.3.14
livingroom-vacuum             IN  A  10.1.3.18
livingroom-harmony-hub        IN  A  10.1.3.15
livingroom-nintendo-switch    IN  A  10.1.3.20
livingroom-receiver-sonos     IN  A  10.1.3.66
livingroom-sonos-move         IN  A  10.1.3.67
manyie-ereader                IN  A  10.1.3.52
spare-p1eu-1                  IN  A  10.1.3.34
study-printer                 IN  A  10.1.3.55
upstairs-vacuum               IN  A  10.1.3.22
upstairs-office-sonos         IN  A  10.1.3.62
upstairs-office-desk-plug     IN  A  10.1.3.32
upstairs-office-speaker-esp   IN  A  10.1.3.35
attic-office-3dprinter        IN  A  10.1.3.11

; Video

; Containers
hegira                        IN  A  10.5.0.2

; CNAME records
nas                           IN  CNAME  helios.natallan.com.
pikvm                         IN  CNAME  technocore.natallan.com.
