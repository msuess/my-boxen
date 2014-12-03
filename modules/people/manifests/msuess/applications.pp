class people::msuess::applications {
  include caffeine
  include chrome
  include firefox
  include hipchat
  include sequel_pro
  include skype
  include virtualbox
  include vlc

  class { 'vagrant':
    version => '1.6.5'
  }

  vagrant::plugin { 'vagrant-vbguest': }
  vagrant::plugin { 'vagrant-hostmanager': }

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
