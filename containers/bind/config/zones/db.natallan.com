
; Make sure to update the epoch time in the SOA records so coreDNS picks up the changes automatically
; https://www.epochconverter.com/

; SOA Records
$TTL 3600
$ORIGIN natallan.com.
@ 3600 IN SOA gateway.natallan.com. gateway.natallan.com. (
  1682790096         ; serial number (epoch timestamp)
  7200               ; refresh period
  3600               ; retry period
  1209600            ; expire time
  3600               ; minimum ttl
)

; NS Records
@                             IN  NS gateway.natallan.com.

; LAN
gateway                       IN  A  10.8.10.1

; Servers
helios                        IN  A  10.8.20.11
xerxes                        IN  A  10.8.20.40
shodan                        IN  A  10.8.20.42
icarus                        IN  A  10.8.20.44
technocore                    IN  A  10.8.20.60


; IOT
brewpiless                    IN  A  10.8.12.200
weatherstation                IN  A  10.8.30.90
zigbee-poe                    IN  A  10.8.30.110
prusa                         IN  A  10.8.30.120
blinds-1                      IN  A  10.8.30.140
firetablet-study              IN  A  10.8.30.100
wled-desk                     IN  A  10.8.30.50
wled-monitor                  IN  A  10.8.30.52
rack-HS110                    IN  A  10.8.30.130
prusa-KP115                   IN  A  10.8.30.131
washing-Machine-KP115         IN  A  10.8.30.132
printer                       IN  A  10.8.30.132

; Video

; Containers
hegira                        IN  A  10.5.0.2

; CNAME records
nas                           IN  CNAME  helios.natallan.com.
pikvm                         IN  CNAME  technocore.natallan.com.
