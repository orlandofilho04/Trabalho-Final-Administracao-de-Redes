# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # VM 01

  config.vm.box = "ubuntu/focal64"
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.cpus = 2
  end
  config.vm.define "servicos" do |servicos|
    servicos.vm.network "private_network", ip: "192.168.33.10"

    servicos.vm.provision "docker" do |docker|
      docker.run "dhcphost", image: "nome-imagem-dhcp", args: "-p 67:67/udp", auto_assign_name: false
      docker.run "dnshost", image: "nome-imagem-dns", args: "-p 53:53", auto_assign_name: false
      docker.run "webserver", image: "nome-imagem-webserver", args: "-p 80:80", auto_assign_name: false
      docker.run "ftpserver", image: "nome-imagem-ftpserver", args: "-p 21:21", auto_assign_name: false
      docker.run "nfsserver", image: "nome-imagem-nfsserver", args: "--privileged -p 2049:2049", auto_assign_name: false
    end
  end
end
