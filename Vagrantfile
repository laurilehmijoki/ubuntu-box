Vagrant::Config.run do |config|
  config.vm.box = 'base'
  config.vm.network :hostonly, "10.11.12.13"

  config.vm.provision :shell do |s|
    s.inline = 'apt-get update'
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'manifests'
    puppet.manifest_file = 'lauri_box.pp'
    puppet.module_path = 'modules'
  end
end
