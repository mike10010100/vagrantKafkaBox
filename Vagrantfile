# -*- mode: ruby -*-
# vi: set ft=ruby :


# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "hashicorp/precise64"

  config.vm.network "forwarded_port", guest:9092, host: 9092
  config.vm.network "forwarded_port", guest:2181, host: 2181

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "kafka-playbook.yml"
    ansible.extra_vars = {
      kafka_version: "0.8.2.2",
      scala_version: "2.11"
    }
  end

end
