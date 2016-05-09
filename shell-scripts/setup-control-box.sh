if [ ! -f "/home/vagrant/.ssh/id_rsa" ]; then
  ssh-keygen -t rsa -N "" -f /home/vagrant/.ssh/id_rsa
fi

cp /home/vagrant/.ssh/id_rsa.pub /vagrant/control.pub

chown -R vagrant:vagrant /home/vagrant/.ssh/