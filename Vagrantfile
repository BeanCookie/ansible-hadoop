# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  (1..3).each do |i|
      config.vm.define "node#{i}" do |node|
      # 设置虚拟机的Box
      node.vm.box = "ubuntu16"
      # 设置虚拟机的主机名
      node.vm.hostname="node#{i}"
      # 设置虚拟机的IP
      node.vm.network "public_network", ip: "192.168.31.20#{i}"
      config.ssh.username = "root"
      config.ssh.private_key_path = "C:/Users/LuZhong/.ssh/id_rsa"
      # 设置主机与虚拟机的共享目录
      node.vm.synced_folder "./data", "/vagrant_data"
      # VirtaulBox相关配置
      node.vm.provider "virtualbox" do |v|
          # 设置虚拟机的名称
          v.name = "node#{i}"
          # 设置虚拟机的内存大小
          v.memory = 2048
          # 设置虚拟机的CPU个数
          v.cpus = 2
      end
      end
  end
end
