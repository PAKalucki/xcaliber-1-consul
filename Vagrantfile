# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  def create_consul(config, hostname, ip)
    config.vm.define hostname do |host|
  
      host.vm.hostname = hostname
      host.vm.network "private_network", ip: ip
    end
  end

  config.vm.provision :ansible do |ansible|
    ansible.verbose = true
    ansible.playbook = "provisioning/playbook.yml"
    ansible.host_vars = {
      "consul2" => { "server_join_address" => "192.168.10.101" }
    }
  end

  create_consul config, "consul1", "192.168.10.101"
  create_consul config, "consul2", "192.168.10.102"
end