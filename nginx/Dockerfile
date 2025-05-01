# khle
FROM nginx

RUN apt-get update && apt-get -y install openssl
RUN openssl req -x509 -newkey rsa:4096 -days 365 -nodes \
	-keyout /etc/ssl/private/pong.fr_key.pem \
	-out /etc/ssl/certs/pong.fr_cert.pem -sha256 \
	-subj "/C=FR/ST=Nouvelle Aquitaine/L=Angouleme/ \
	O=42 Angouleme/CN=pong.fr"

#khle: RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=khle.42.fr/UID=khle"
# -req: create sefl-signed certificate
# -x509: std format for SSL/TSL cert
# -nodes: (no DES-Data Encryption Standard) not require password to use key
# -out: place to save the cert
# -keyout: place to sav key
# -subj: add infor for cert:
#	+ /C=FR: Cuntry
#	+ /ST=IDF: State
# 	+ /L=Paris: Locality
# 	+ /O=42: Organization
# 	+ /OU=42: Organizational Unit
# 	+ /CN=khle.42.fr : Common Name (domain name)
# 	+ /UID=khle: User ID

COPY nginx.conf /etc/nginx/nginx.conf
