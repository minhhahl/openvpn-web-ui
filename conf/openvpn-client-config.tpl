dev tun
persist-tun
persist-key
client
resolv-retry infinite
remote {{ .ServerAddress }} {{ .Port }} {{ .Proto }}
nobind

cipher {{ .Cipher }}
keysize {{ .Keysize }}
auth {{ .Auth }}

ca {{ .Ca }}
cert {{ .Cert }}
key {{ .Key }}
tls-auth {{ .Ta }} 1

comp-lzo
