# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "geerlingguy/centos8"
  config.ssh.insert_key = false
  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provider :virtualbox do |v|
    v.memory = 256
    v.linked_clone = true
  end

  # App server
  config.vm.define "app1" do |app|
    app.vm.hostname = "orc-app1.test"
    app.vm.network :private_network, ip: "192.168.60.2"

    app.vm.provision 'ansible' do |ansible|
      ansible.playbook = 'playbook.yml'
      # ansible.sudo = true
      # ansible.inventory_path = 'ansible/inventory/site'
      # ansible.host_key_checking = false
    end
  end
end
