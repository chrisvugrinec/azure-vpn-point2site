#  Convert P12 to KEY
echo "Exporting the private key from keychain will give you a p12 file, for the CSR you need a .key file...this is how you convert it: "
echo "openssl pkcs12 -in rootkey.p12 -nodes -out rootkey.key -nocerts"


