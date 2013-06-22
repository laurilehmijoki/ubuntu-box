class coding_environment::dotfiles {
  Exec {
    cwd     => '/home/llehmijo',
    user    => 'llehmijo',
    path    => ['/usr/bin', '/usr/sbin', '/bin'],
    require => [Package['git'], User['llehmijo']]
  }

  file { '/tmp/install_dotfiles.sh':
    mode   => 0740,
    source => 'puppet:///modules/coding_environment/install_dotfiles.sh',
    owner  => 'llehmijo'
  }

  exec { '/tmp/install_dotfiles.sh':
    require => File['/tmp/install_dotfiles.sh'],
    unless  => 'test -f /home/llehmijo/.git -gt 0'
  }
}
