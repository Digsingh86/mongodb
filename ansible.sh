#!/bin/bash

echo "Installing Ansible"
sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible -y
sudo apt-get install python3 -y
sudo apt-get install python3-pip -y
sudo pip3 install boto3


# sudo adduser --ingroup sudo --shell /bin/bash --gecos 'Terraform user' --disabled-password terraform
# echo 'terraform:terraform' | sudo chpasswd
# sudo mkdir /home/terraform/.ssh
# sudo chown -R terraform:terraform /home/terraform/.ssh/
# 
# sudo chmod 600 /home/terraform/.ssh/authorized_keys
# sudo chown -R terraform:terraform /home/terraform/.ssh/authorized_keys
# sudo sh -c 'echo "terraform ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/terraform'
# sudo chmod 0440 /etc/sudoers.d/terraformsudo apt-get install -y software-properties-common
#sudo apt-add-repository -y ppa:ansible/ansible
#sudo apt-get update
#sudo apt-get install -y ansible git
#ssh-keygen -q -N ""
#cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
#git clone --recursive -b dev https://github.com/Digsingh86/mongodb-tool.git
#cd ansible-artimed/galaxy/
#hostIP=`hostname -I | cut -d " " -f 1`
#INSTALL_HOSTNAME=$hostIP ansible-playbook -i "localhost," galaxy.yml -vvvv


