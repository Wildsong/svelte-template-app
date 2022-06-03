cd /srv/app

npm install

if [ $LOCN="home" ]; then
  CERT=/srv/certs/caddy/certificates/acme-v02.api.letsencrypt.org-directory/${FQDN}/${FQDN}.crt
  KEY=/srv/certs/caddy/certificates/acme-v02.api.letsencrypt.org-directory/${FQDN}/${FQDN}.key
  ls -l /srv/certs/caddy/certificates
else
  CERT="/srv/certs/${FQDN}/fullchain.pem"
  KEY="/srv/certs/${FQDN}/key.pem"
fi
ls $CERT
ls $KEY
#env

parcel serve --cert=$CERT --key=$KEY --host=0.0.0.0 --port=10443 index.html

