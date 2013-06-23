# Vagrant Ubuntu for development

This project contains a [Vagrant](http://vagrantup.com/) config.

## Usage with Vagrant

1. Install Vagrant
2. Download the Ubuntu Vagrant base box
3. Issue `vagrant up` in the root of this project
4. `vagrant ssh` and you are in the box

## Usage with EC2

1. Launch an Ubuntu EC2 instance
2. Log in with SSH
3. `git clone https://github.com/laurilehmijoki/vagrant-ubuntu-devel.git`
4. `sudo apt-get install puppet-common`
5. `sudo puppet apply vagrant-ubuntu-devel/manifests/lauri_box.pp --modulepath
   vagrant-ubuntu-devel/modules`
