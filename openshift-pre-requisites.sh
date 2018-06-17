#!/bin/bash

# Updating the Packages

yum update -y

# Installing the Epel Repository

yum install epel-release -y

# Installing the Python-pip Repository
yum install python-pip git python-lxml python-devel libevent-devel -y 


# Install Development Tools
yum install gcc glibc glibc-common gd gd-devel -y

# Clone the Openshift Repository into root Home directory

git clone https://github.com/openshift/openshift-ansible.git /root/openshift-ansible

# Go to the Openshit Cloned repo then install the requirements

cd /root/openshift-ansible

# Ansible Installation

pip install -r requirements.txt

# Clone my repository to get the Pre-Configured Ansible host file and the Official Open repo to install the Packages
git clone https://github.com/kashu9999/Openshift-Cluster-Setup-On-AWS.git /root/my-openshift-setup

# Copy the repo file into yum.repos.d/

cp -rvf /root/my-openshift-setup/open.repo /etc/yum.repos.d/open.repo

#Take the backup of Original Ansible Host file

cp -rvf /etc/ansible/hosts /etc/ansible/hosts.bkp

# Copy the my Ansible Host file 

cp -rvf /root/my-openshift-setup/hosts /etc/ansible/hosts



