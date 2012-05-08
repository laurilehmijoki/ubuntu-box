Vagrant::Config.run do |config|
  config.vm.box = "base"

  config.vm.network :hostonly, "10.11.12.13"

  config.vm.provision :shell, :path => "vagrant-init.sh"

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  # config.vm.share_folder "v-data", "/vagrant_data", "../data"
end
