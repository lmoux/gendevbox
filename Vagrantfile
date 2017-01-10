# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "debian/jessie64"
  config.vm.network "forwarded_port", guest: 80, host: 8089
  config.vm.hostname = "development"
  config.vm.synced_folder "projects", "/home/vagrant/dev"
  
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/main.yml"
    #ansible.playbook = "ansible.playbook.yml"
  end
  config.ssh.forward_x11 = true
end
