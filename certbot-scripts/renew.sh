#!/bin/bash

# Path to the file that contains the list of domains
DOMAINS_FILE="/etc/letsencrypt/domains.txt"
WEBROOT="/var/www/certbot"

# Loop through each domain and run Certbot for it
while IFS= read -r domain; do
  echo "Processing domain: $domain"
  certbot certonly --webroot -w $WEBROOT --agree-tos --no-eff-email --email your-email@example.com -d $domain --non-interactive
done <"$DOMAINS_FILE"

# Set the script to renew certificates every 12 hours
while true; do
  certbot renew
  sleep 12h
done
