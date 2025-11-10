#!/bin/bash
# Ban social media domains system-wide on macOS

BLOCKLIST="blocklist.txt"
RESOLVER_DIR="/etc/resolver"
HOSTS_FILE="/etc/hosts"

sudo mkdir -p "$RESOLVER_DIR"

while read -r domain; do
  [ -z "$domain" ] && continue
  echo "nameserver 127.0.0.1" | sudo tee "$RESOLVER_DIR/$domain" >/dev/null
  if ! grep -q "$domain" "$HOSTS_FILE"; then
    echo "127.0.0.1   $domain" | sudo tee -a "$HOSTS_FILE" >/dev/null
    echo "127.0.0.1   www.$domain" | sudo tee -a "$HOSTS_FILE" >/dev/null
  fi
done < "$BLOCKLIST"

sudo dscacheutil -flushcache
sudo killall -HUP mDNSResponder
echo "✅ Social media domains permanently banned."
