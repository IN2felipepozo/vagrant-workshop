vagrant-workshop
================

Dependencies for Windows
------------------------
* Download Babun from the website at: http://babun.github.io/
* Unzip the file and run the install.bat
* `babun shell /bin/bash`
* `bash`
* `curl https://raw.githubusercontent.com/chrisgilbert/scripts/master/bootstrap_ansible_windows.sh | bash`
* `ssh-keygen`
* [press enter to choose rsa]
* [enter your choosen passphrase twice]
* `chgrp -R Users ~/.ssh`
* `chmod -R 700 ~/.ssh/`
* `chmod 600 ~/.ssh/id_rsa`
* `. ~/.bash_profile`
* `git clone https://github.com/rivaros/ansible-playbook-shim.git`
* `cd ansible-playbook-shim`
* `ln -s $PWD/ansible-playbook-shim.sh /usr/local/bin/ansible-playbook-shim.sh`
* `cp ansible-playbook.bat /c/Users/<user>/.babun`

Quick start
-----------

* `git clone https://github.com/IN2felipepozo/vagrant-workshop.git`
* `cd vagrant-workshop`
* `vagrant up`
