# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define "ansible" do |machine|
    machine.vm.box = "chavinje/fr-bull-64"
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
#    machine.vm.provision "shell", path: "scripts/install_sys.sh"
    machine.vm.provision "shell", path: "scripts/install_ansible.sh"
    machine.vm.provision "shell", path: "scripts/conf_ansible.sh"
  end

  config.vm.define "debian" do |machine2|
    machine2.vm.box = "debian/jessie64"
    machine2.vm.box = "chavinje/fr-bull-64"
    machine2.vm.hostname = "debian"
# Configuration des 2 interfaces 
    machine2.vm.network :private_network, ip: "192.168.56.71"
#    machine.vm.network "public_network", use_dhcp_assigned_default_route: true
# Un repertoire partagé (Attention il faut les virtualbox Additions installé sur l'hôte)
#    machine.vm.synced_folder "./data", "/partage"
    machine2.vm.provider :virtualbox do |v2|
      v2.customize ["modifyvm", :id, "--name", "debian"]
      v2.customize ["modifyvm", :id, "--groups", "/Projet"]
      v2.customize ["modifyvm", :id, "--cpus", "1"]
      v2.customize ["modifyvm", :id, "--memory", 512]
      v2.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v2.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    end
    machine2.vm.provision "shell", path: "scripts/install_sys.sh"
    machine2.vm.provision "shell", path: "scripts/authorized_keys.sh"
  end
end
