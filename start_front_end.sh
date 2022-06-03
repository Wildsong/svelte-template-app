cd /srv/app

#CERT="/srv/certs/$1/fullchain.pem"
#KEY="/srv/certs/$1/key.pem"

#CERT=/srv/certs/caddy/certificates/acme-v02.api.letsencrypt.org-directory/$1/$1.crt
#KEY=/srv/certs/caddy/certificates/acme-v02.api.letsencrypt.org-directory/$1/$1.key

npm install

ls -l $CERT $KEY

#parcel serve --cert=$CERT --key=$KEY --host=0.0.0.0 index.html
parcel serve --host=0.0.0.0 index.html

