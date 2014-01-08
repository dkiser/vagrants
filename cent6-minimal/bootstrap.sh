#!/bin/bash

########################
#### Install EPEL ######
########################
wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -Uvh epel-release*

#########################
#### Update all pkgs ####
#########################
yum -y update
