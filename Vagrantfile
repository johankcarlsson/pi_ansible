# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
 
 
config.vm.define "ansible" do |ansible|
 ansible.vm.box = "bento/centos-7.4"
 #ansible.vm.network :private_network, ip: "10.0.0.77"
 #ansible.vm.network :forwarded_port, guest: 4444, host: 4444
 ## Make your ssh config available
 config.vm.synced_folder ".", "/vagrant"
 ##config.vm.synced_folder "C:/cygwin64/home/carlsson04/.ssh", "/home/vagrant/ssh-host"
 ##config.vm.synced_folder "#{Dir.home}/.ssh", "/home/vagrant/ssh-host"
#ansible.vm.provision "file", source: "#{Dir.home}/.ssh/known_hosts", destination: "/home/vagrant/.ssh"
 #ansible.vm.provision "file", source: "#{Dir.home}/.ssh/config", destination: "/home/vagrant/.ssh"
 #ansible.vm.provision "file", source: "#{Dir.home}/.ssh/id_rsa", destination: "/home/vagrant/.ssh"
## ansible.vm.provision "shell" do |s|
##   ssh_pub_key = File.readlines("#{Dir.home}/.ssh/id_rsa.pub").first.strip
#   ssh_known_hosts = File.readlines("#{Dir.home}/.ssh/known_hosts")
#   ssh_config = File.readlines("#{Dir.home}/.ssh/config")
##   s.inline = <<-SHELL
##     echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys
##   SHELL
## end
 ansible.vm.provision :shell, path: "bootstrap.sh"
 #ansible.vm.provision "ansible" do |ansible|
 #   ansible.playbook = "ansible/reports-playbook.yml"
 # end
end 
 
end

