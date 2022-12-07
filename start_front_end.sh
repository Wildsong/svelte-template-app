# Changes in this script require re-running
#   docker-compose build
# because it's copied into the Docker image.

cd /srv/app

npm install

if [ "$LOCN"="home" ]; then
# At home I currently use "caddy" as my proxy and let's encrypt thing
  CERT=/srv/certs/certificates/${FQDN}/${FQDN}.crt
  KEY=/srv/certs/certificates/${FQDN}/${FQDN}.key
else
# I want to use caddy at work too but don't have it running yet.
# Here I am using the jwilder nginx proxy.
  CERT="/srv/certs/${FQDN}/fullchain.pem"
  KEY="/srv/certs/${FQDN}/key.pem"
fi
ls -l /srv/certs/certificates
ls $CERT
ls $KEY
#env

parcel serve --cert=$CERT --key=$KEY --host=0.0.0.0 --port=10443 index.html
