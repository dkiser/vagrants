#!/bin/bash

########################
#### Install EPEL ######
########################
wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -Uvh epel-release*

##########################################
####### Update and Install Pkgs ##########
##########################################
yum update -y
yum -y groupinstall "Development tools"
yum -y install mock rpm-build git python-setuptools



#########################################
###### Setup RPMBUILD for Vagrant #######
#########################################
mkdir -p /home/vagrant/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
# Because rpmlib on cent6 uses SHA hashes instead of md5 like cent5
# lets default to using md5 so that any source rpms we build here
# will properly install in both cent5/6 mock environments
# https://bugzilla.redhat.com/show_bug.cgi?id=490613
#echo '%_topdir %(echo $HOME)/rpmbuild' > /home/vagrant/.rpmmacros
#echo '%_source_filedigest_algorithm md5' >> /home/vagrant/.rpmmacros
#echo '%_binary_filedigest_algorithm md5' >> /home/vagrant/.rpmmacros
#chown vagrant /home/vagrant/.rpmmacros
#chown -R vagrant /home/vagrant/rpmbuild


#########################################
########  Setup users for mock  #########
#########################################
groupmems -g mock -a vagrant
groupmems -g mock -a veewee
