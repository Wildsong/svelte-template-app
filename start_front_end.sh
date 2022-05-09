cd /srv/app

CERT="/srv/certs/$1/fullchain.pem"
KEY="/srv/certs/$1/key.pem"

npm install

parcel serve --cert=$CERT --key=$KEY --host=0.0.0.0 index.html

