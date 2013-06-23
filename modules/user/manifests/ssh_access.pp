class user::ssh_access {
  File {
    owner => llehmijo,
    group => llehmijo
  }

  file { '/home/llehmijo/.ssh/authorized_keys':
    source  => 'puppet:///modules/user/authorized_keys',
    mode    => 0600,
    require => [User['llehmijo'], File['/home/llehmijo/.ssh']]
  }

  file { '/home/llehmijo/.ssh':
    ensure => directory,
    mode   => 0700
  }
}
