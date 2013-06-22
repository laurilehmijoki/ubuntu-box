class coding_environment::git {
  $git = $operatingsystem ? {
    ubuntu  => git-core,
    default => git
  }

  package { $git:
    ensure => installed,
    alias  => git
  }
}
