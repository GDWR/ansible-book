# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-24.04"
  config.vm.synced_folder '.', '/vagrant', disabled: true

  config.vm.define "ansible-present-1" do |host|
    host.vm.network "forwarded_port", id: "ssh", host: 2201, guest: 22
    host.vm.provider "virtualbox" do |v|
      v.name = "ansible-present-1"
      v.memory = 2048
    end
  end

  config.vm.define "ansible-present-2" do |host|
    host.vm.network "forwarded_port", id: "ssh", host: 2202, guest: 22
    host.vm.provider "virtualbox" do |v|
      v.name = "ansible-present-2"
      v.memory = 2048
    end
  end
end

