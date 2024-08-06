#!/bin/sh

echo "Generating certificates for use with GitHub, press enter to continue"

read check1

openssl genrsa -des3 -passout pass:sdlc -out server.pass.key 2048
openssl rsa -passin pass:sdlc -in server.pass.key -out server.key

rm server.pass.key

echo "We will now generate the server key, when promoted for a password, press enter"
echo "Press enter to continue"

read check2

openssl req -new -key server.key -out server.csr

echo "We will now generate the certificates, press enter to continue"
openssl x509 -req -sha256 -days 36500 -in server.csr -signkey server.key -out server.crt

echo "The key will now be encoded in BASE64 and displayed, use the output for the value of SF_JWT_KEY environment variable"
echo ""

base64 server.key

echo "We will now clean up, keys will be deleted"
rm server.csr
rm server.key

echo "Certificate and key generation complete, please add server.crt to your OAuth connected app in Salesforce"
