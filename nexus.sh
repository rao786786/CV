#!/bin/bash

# Update and install dependencies
sudo apt update
sudo apt install -y build-essential pkg-config libssl-dev git-all protobuf-compiler

# Install Nexus CLI
curl https://cli.nexus.xyz/ | sh -y

source /home/mashrafpnp/.bashrc
nexus-cli start --node-id 25663319

