Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.define "control", primary: true do |h|
    h.vm.hostname = "control-machine"
    h.vm.network "private_network", ip: "10.0.0.30"
    h.vm.provision :shell, path: 'shell-scripts/setup-control-box.sh' 
  end

  config.vm.define "load-balancer" do |h|
    h.vm.hostname = "load-balancer"
    h.vm.network "private_network", ip: "10.0.0.31"
    h.vm.provision :shell, path: 'shell-scripts/setup-controlled-box.sh'
  end

  config.vm.define "app-01" do |h|
    h.vm.hostname = "app-01"
    h.vm.network "private_network", ip: "10.0.0.32"
    h.vm.provision :shell, path: 'shell-scripts/setup-controlled-box.sh'
  end

  config.vm.define "app-02" do |h|
    h.vm.hostname = "app-02"
    h.vm.network "private_network", ip: "10.0.0.33"
    h.vm.provision :shell, path: 'shell-scripts/setup-controlled-box.sh'
  end

  config.vm.define "db-01" do |h|
    h.vm.hostname = "db-01"
    h.vm.network "private_network", ip: "10.0.0.34"
    h.vm.provision :shell, path: 'shell-scripts/setup-controlled-box.sh'
  end
end