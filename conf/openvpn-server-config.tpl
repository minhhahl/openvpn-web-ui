management {{ .Management }}

port {{ .Port }}
proto {{ .Proto }}

dev tun

ca {{ .Ca }}
cert {{ .Cert }}
key {{ .Key }}

cipher {{ .Cipher }}
keysize {{ .Keysize }}
auth {{ .Auth }}
dh {{ .Dh }}
crl-verify {{ .Crl }}

tls-auth {{ .Ta }} 0

server {{ .Server }}
ifconfig-pool-persist {{ .IfconfigPoolPersist }}
;push "route 10.8.0.0 255.255.255.0"
;push "dhcp-option DNS 8.8.8.8"
;push "dhcp-option DNS 8.8.4.4"

keepalive {{ .Keepalive }}

comp-lzo
max-clients {{ .MaxClients }}

persist-key
persist-tun

{{ .DaemonUser }}
{{ .DaemonGroup }}
status openvpn-status.log
log         openvpn.log
verb 3

mute 10
