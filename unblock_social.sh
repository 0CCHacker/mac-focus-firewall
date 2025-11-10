#!/bin/bash
# Unblock social media domains system-wide on macOS

BLOCKLIST="blocklist.txt"
RESOLVER_DIR="/etc/resolver"
HOSTS_FILE="/etc/hosts"

while read -r domain; do
  [ -z "$domain" ] && continue
  sudo rm -f "$RESOLVER_DIR/$domain"
  sudo sed -i '' "/$domain/d" "$HOSTS_FILE"
done < "$BLOCKLIST"

sudo dscacheutil -flushcache
sudo killall -HUP mDNSResponder
echo "✅ Social media domains unblocked."
