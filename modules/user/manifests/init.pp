class user {
  user { 'llehmijo':
    home       => '/home/llehmijo',
    managehome => true,
    shell      => '/bin/bash'
  }
}
