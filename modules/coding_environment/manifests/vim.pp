class coding_environment::vim {
  $vim = $operatingsystem ? {
    ubuntu  => vim-nox,
    default => vim
  }

  package { $vim:
    ensure => installed,
    alias  => vim
  }

  # Command-T requires this:
  package { ['ruby-dev', 'make']:
    ensure => installed
  }

  package { 'ctags':
    ensure => installed
  }
}
