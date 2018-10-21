#!/bin/bash
echo "Provisioning virtual machine..."

echo "Updating OS...."
sudo sudo yum -y update
	
echo "Install EPEL..."
sudo yum -y install epel-release
#echo "Install Docker...."
#sudo yum -y install docker-io
#echo "Start Docker...."
#sudo service docker start
#echo "Activate autostart of Docker...."
#sudo chkconfig docker on
#echo "Docker version is: "
#docker --version

#sudo groupadd docker
#sudo usermod -aG docker $(whoami)
#sudo systemctl enable docker.service
#sudo systemctl start docker.service

#sudo yum install epel-release
#sudo yum install -y python-pip
#sudo pip install docker-compose

echo "Install Ansible...."
sudo yum -y install -y ansible
 


echo "Install Git...."
sudo yum -y install git

echo "Git version is: "
git --version

echo "Copy ssh-config..."
cp /vagrant/ssh-config/config /vagrant/ssh-config/known_hosts /vagrant/ssh-config/id_* .ssh
chmod 600 .ssh/id_*
chmod 755 .ssh/config
chown vagrant.vagrant .ssh/*


#You will need to save the docker image as a tar file: docker save -o <save image to path> <image name>
#Then copy the image to your target machine and then run: docker load -i <path to image tar file>

echo ""
echo ""
#echo "Start ivankrizsan/elastalert:latest Docker...."
#sudo docker run -e ELASTICSEARCH_HOST=10.0.0.76 -v /vagrant/opt/rules:/opt/rules -v /vagrant/opt/logs:/opt/logs -v /vagrant/opt/config:/opt/config ivankrizsan/elastalert:latest
echo ""
echo ""
echo "#####################################################"
echo "# Connect to docker file with:                      #"
echo "# sudo docker ps                                    #"
echo "# sudo docker exec -it 3fe5fe85ba4d sh              #"
echo "#                                                   #"
echo "#####################################################"


echo ""
echo "!!!!! STILL to do !!!!!"
echo "Make config volumes mounted on outside "


#echo "Start Ansible playbook...."
#ansible-playbook -i /vagrant/ansible-elk/hosts /vagrant/ansible-elk/install/elk.yml
