# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "phusion/ubuntu-14.04-amd64"

  # define the hostname
  config.vm.hostname = 'linzminitwitterbasic'

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.90.3"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # If true, then any SSH connections made will enable agent forwarding.
  config.ssh.forward_agent = true

  # Share the folder between host and VM
  config.vm.synced_folder ".", "/vagrant"
  config.vm.synced_folder "../linz", "/usr/lib/node_modules/linz"
  # config.vm.synced_folder ".", "/vagrant", type: 'nfs'

  # Provision with shell, nice and simple :)
  # configuration step 0: provisioner
  config.vm.provision "shell", path: "vagrant/provisioner.sh"

  # configuration step 1: apt-get
  config.vm.provision "shell", path: "vagrant/apt-get.sh"

  # configuration step 2: git
  config.vm.provision "shell", path: "vagrant/git.sh"

  # configuration step 3: hub cli
  config.vm.provision "shell", path: "vagrant/hub.sh"

  # configuration step 4: nodejs
  config.vm.provision "shell", path: "vagrant/nodejs.sh"

  # configuration step 5: mongodb
  config.vm.provision "shell", path: "vagrant/mongodb.sh"

  # configuration step 6: env
  config.vm.provision "shell", path: "vagrant/env.sh"

  # configuration step 7: setup
  config.vm.provision "shell", path: "vagrant/setup.sh"

  # configuration step 8: clean (remove unccessary data and GBs)
  config.vm.provision "shell", path: "vagrant/clean.sh"

end
