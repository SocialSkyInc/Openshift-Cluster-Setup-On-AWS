#!/bin/bash

# Updating the Packages

yum update -y

# Installing the Epel Repository

yum install epel-release -y

# Installing the Python-pip Repository
yum install python-pip git python-lxml -y 


# Install Development Tools
yum install gcc glibc glibc-common gd gd-devel -y

# Clone the Openshift Repository into root Home directory

git clone https://github.com/openshift/openshift-ansible.git /root/openshift-ansible

# Go to the Openshit Cloned repo then install the requirements

cd /root/openshift-ansible

# Ansible Installation

pip install -r requirements.txt
