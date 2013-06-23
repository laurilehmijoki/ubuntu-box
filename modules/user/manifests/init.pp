class user {
  include user::ssh_access

  user { 'llehmijo':
    home       => '/home/llehmijo',
    managehome => true,
    shell      => '/bin/bash'
  }
}
