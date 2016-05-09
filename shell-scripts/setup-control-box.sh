if [ ! -f "/home/vagrant/.ssh/id_rsa" ]; then
  ssh-keygen -t rsa -N "" -f /home/vagrant/.ssh/id_rsa
fi

cp /home/vagrant/.ssh/id_rsa.pub /vagrant/control.pub

chown -R vagrant:vagrant /home/vagrant/.ssh/

sudo apt-get -y install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get -y update
sudo apt-get -y install ansible