#!/bin/bash
# Create Linux user with home directory and expiry

read -p "Enter username: " USER
read -p "Enter expiry date (YYYY-MM-DD): " EXPIRY

useradd -m -e "$EXPIRY" "$USER" && passwd "$USER"

echo "User $USER created successfully with expiry $EXPIRY"
