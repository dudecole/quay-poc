# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.

  config.vm.define "quay" do |quay|
    quay.vm.box = "generic/rhel8"
    quay.vm.hostname = "quay"
    quay.vm.network "private_network" , ip: "192.168.59.200"
    quay.vm.network "forwarded_port", guest: 80, host: 80
    quay.vm.network "forwarded_port", guest: 443, host: 443
#    quay.vm.network "forwarded_port", guest: 5432, host: 5432
    config.vm.provider "virtualbox" do |quaym1|
        quaym1.memory = 4096
        quaym1.cpus = 2
    end
  end
  #


  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL

#  config.vm.provision "ansible" do |ansible|
#    ansible.playbook = "ansible/playbook.yml"
#    #ansible.verbose = "vvvv"
#  end
end
