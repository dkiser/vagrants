#!/bin/bash

########################
#### Install EPEL ######
########################
yum -y install wget
wget http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7
rpm --import ./RPM-GPG-KEY-EPEL-7
yum install -y http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-1.noarch.rpm
yum install -y epel

#########################
#### Update all pkgs ####
#########################
yum -y update
