#!/bin/bash

if [ ! -f /usr/bin/ansible ]; then
  sudo rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
  sudo yum update
  sudo yum install -y ansible
fi
