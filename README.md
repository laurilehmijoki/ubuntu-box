# Ubuntu box configs

This project contains the configs for setting up a personal Ubuntu instance.

Aims of this project are:

* Make it easy to set up an Ubuntu instance with personal configs
* Make it easy to develop the configs further

## Usage with Vagrant

1. Install Vagrant
2. Download the Ubuntu Vagrant base box
3. Issue `vagrant up` in the root of this project
4. `vagrant ssh` and you are in the box

## Usage with EC2

1. Launch an Ubuntu EC2 instance
2. Log in with SSH
3. `git clone https://github.com/laurilehmijoki/ubuntu-box.git`
4. `sudo apt-get install puppet-common`
5. `sudo puppet apply ubuntu-box/manifests/lauri_box.pp --modulepath
   ubuntu-box/modules`
