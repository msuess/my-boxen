class people::msuess::applications {
  include caffeine
  include chrome
  include firefox
  include skype
  include vlc


  # Homebrew Packages
  package { 'ag':
    ensure => installed
  }
  package { 'coreutils':
    ensure => installed
  }
  package { 'cmake':
    ensure => installed
  }
  package { 'ant':
    ensure => installed
  }
  package { 'elasticsearch':
    ensure => installed
  }
  package { 'vim':
    ensure => installed
  }
}
