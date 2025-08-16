#!/bin/bash

# Update and install dependencies
sudo apt update
sudo apt install -y build-essential pkg-config libssl-dev git-all protobuf-compiler

# Install Nexus CLI
curl https://cli.nexus.xyz/ | sh

# Source the correct .bashrc using $HOME
source "$HOME/.bashrc"

# Prompt user for Node ID
read -p "Enter your Node ID: " NODE_ID

# Start the Nexus CLI node
nexus-cli start --node-id "$NODE_ID"
