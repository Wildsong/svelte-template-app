echo "Installing parcel and friends."
yarn add --dev typescript parcel parcel-transformer-svelte svelte svelte-routing

echo "Installing project packages"
yarn install

if [ "$NODE_ENV" = "production" ]; then
  PORT="10443"
  echo "Starting app.. try https://192.168.123.2:${PORT} or https://127.0.0.1:${PORT}"
  CERT=/srv/certs/certificates/${FQDN}/${FQDN}.crt
  KEY=/srv/certs/certificates/${FQDN}/${FQDN}.key
  ls -l /srv/certs/certificates
  ls $CERT
  ls $KEY
  yarn parcel serve --cert=$CERT --key=$KEY --host=0.0.0.0 --port=$PORT index.html
else
  PORT="1234"
  echo "Starting app.. try http://192.168.123.2:${PORT} or http://127.0.0.1:${PORT}"
  CERT=""
  KEY=""
  yarn parcel serve index.html
fi

