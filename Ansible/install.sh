#!/bin/sh


# Installation script for Ansible

sudo apt install -y python         # install python
sudo apt install -y python-pip     # install pip

pip install ansible


# Additionnal optionnal installation

## Install boto to work with AWS cloud provider
#
# pip install boto boto3
