# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "hashicorp/precise32"
  config.vm.network "forwarded_port", guest: 8000, host: 8889
  
  config.vm.provision "chef_solo" do |chef|
    chef.add_recipe "splunk"
  end
end
