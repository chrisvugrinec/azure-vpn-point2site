# Generate Certificate
openssl x509 -req -days 3650 -in rootkey-server.csr -signkey rootkey.key -out rootkey-server.crt


