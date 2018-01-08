Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision "docker",
    images: ["ubuntu"]
  config.vm.provision "shell", path: "test.sh", privileged: false,
  run: 'always'
  # Run Ansible from the Vagrant VM
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "install.yml"
  end

  config.vm.synced_folder "../../../git", "/git"
  config.vm.synced_folder "../../../docker", "/docker"
  config.vm.network "public_network"
end
