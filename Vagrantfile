# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.ssh.insert_key = false
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "512"]
  end

  # Application server 1.
  config.vm.define "app1" do |app|
    app.vm.hostname = "app1-presentation.dev"
    app.vm.box = "ubuntu/trusty64"
    app.vm.network :private_network, ip: "192.168.60.4"
    app.vm.network :forwarded_port, guest: 80, host: 8084
  end

  # Application server 2.
  config.vm.define "app2" do |app|
    app.vm.hostname = "app2-presentation.dev"
    app.vm.box = "ubuntu/trusty64"
    app.vm.network :private_network, ip: "192.168.60.5"
    app.vm.network :forwarded_port, guest: 80, host: 8085
  end

  # Backup server.
  config.vm.define "backup" do |backup|
    backup.vm.hostname = "backup-presentation.dev"
    backup.vm.box = "ubuntu/trusty64"
    backup.vm.network :private_network, ip: "192.168.60.6"
  end

  # DB server.
  config.vm.define "db" do |db|
    db.vm.hostname = "db-presentation.dev"
    db.vm.box = "ubuntu/trusty64"
    db.vm.network :private_network, ip: "192.168.60.7"
    db.vm.network :forwarded_port, guest: 5432, host: 5432
  end

  config.vm.provision "ansible" do |ansible|
      ansible.playbook = "./provision.yml"
      ansible.inventory_path = "./inventory"
      ansible.limit = 'all'
  end

end