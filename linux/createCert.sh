# Generate Private Key
openssl genrsa -des3 -out private.key 1024
# Generate CSR
openssl req -new -key private.key -out server.csr
# Generate Certificate
openssl x509 -req -days 3650 -in server.csr -signkey private.key -out server.crt


