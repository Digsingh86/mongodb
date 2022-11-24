sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible git
ssh-keygen -q -N ""
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
git clone --recursive -b dev https://github.com/Digsingh86/tool.git
cd ansible-artimed/galaxy/
hostIP=`hostname -I | cut -d " " -f 1`
INSTALL_HOSTNAME=$hostIP ansible-playbook -i "localhost,"  -vvvv
