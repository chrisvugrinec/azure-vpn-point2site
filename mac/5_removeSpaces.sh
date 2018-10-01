echo "Filename where CRT is: "
read filename
cat $filename | grep -v CERTIFICATE >tmp-x
tr -d '\n' <  tmp-x > $filename-nospaces.crt
rm -f tmp-x

echo "Now copy this Cert into your Azure VPN Gateway config...and download the client based on this Cert"
echo "Then add this new downloaded client cert to your Keychain"
