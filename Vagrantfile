# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "ansible" do |machine|
    machine.vm.box = "centos/7"
    machine.vm.box_url = "centos/7"
    machine.vm.hostname = "ansible"
# Configuration des 2 interfaces 
    machine.vm.network :private_network, ip: "192.168.56.70"
#    machine.vm.network "public_network", use_dhcp_assigned_default_route: true
# Un repertoire partagé (Attention il faut les virtualbox Additions installé sur l'hôte)
#    machine.vm.synced_folder "./data", "/partage"
    machine.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--name", "ansible"]
      v.customize ["modifyvm", :id, "--groups", "/Projet"]
      v.customize ["modifyvm", :id, "--cpus", "1"]
      v.customize ["modifyvm", :id, "--memory", 512]
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    end
    machine.vm.provision "shell", path: "scripts/install_sys.sh"
   # machine.vm.provision "shell", path: "scripts/install_ansible.sh"
  end
end
