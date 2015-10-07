# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.box = "boxcutter/centos66"

  config.vm.define 'tomcat' do |node|
    node.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "1024"
    end
    node.vm.network "forwarded_port", guest: 8080, host:8180
    node.vm.network "forwarded_port", guest: 8009, host:8109
    node.vm.provision "ansible" do |ansible|
      ansible.groups = {
        'db_hosts' => [ 'db' ]
      }
      ansible.playbook = "ansible/tomcat.yml"
    end
  end

  config.vm.define 'db' do |node|
    node.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = "1024"
    end
    node.vm.provision "ansible" do |ansible|
      ansible.groups = {
        'tomcat_hosts' => [ 'tomcat' ]
      }
      ansible.playbook = "ansible/db.yml"
    end
  end

end
