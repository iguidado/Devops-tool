#!/bin/bash

# Take care that there is file named the same
CHECK_FILE=/tmp/check_file


sudo apt-get update && sudo apt-get install -y gnupg software-properties-common

wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint > /tmp/check_file

if [ ! grep 'HashiCorp Security (HashiCorp Package Signing) <security+packaging@hashicorp.com>' "$CHECK_FILE" &> /dev/null ]
then
	echo "There is a problem with the gpg key, exiting"
	exit
else
	echo "GPG Key seems ok"
fi

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update

sudo apt install terraform

if [ terraform -help &> /dev/null ]
then
	echo "terraform installation complete"
else
	echo "Something went wrong in the installation"
fi
