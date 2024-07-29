#!/bin/bash

echo -e "You are installing Clofio CostGuard CLI\n"

echo -e "Downloading binary...\n"

wget -nv https://github.com/Clofio/costguard-binary/releases/latest/download/costguard-linux.zip

echo -e "Installing binary...\n"

unzip costguard-linux.zip -d /usr/local/bin && chmod +x /usr/local/bin/costguard

echo -e "Configuring credentials...\n"

credentials=~/.config/costguard/credentials.yml

mkdir -p "$(dirname "$credentials")" && touch "$credentials"

cat <<EOF >$credentials
version: "0.1"
api_key: ${COSTGUARD_API_KEY}
pricing_api_endpoint: https://costguard.clof.io/api
EOF

echo -e "Installation done.\n"