# Terraform

## Description

Terraform is a configuration automation tool. It will help you create and manage systeme (even remotely) to attain a desired configuration. It work by using declarative syntax file to describe desired state on a system and applying automatique change to achieve it.

## [Installation](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

> install dependency
```bash
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
```

> install key and repo
```bash
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null


wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null


gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint
```
