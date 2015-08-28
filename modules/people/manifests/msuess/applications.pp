class people::msuess::applications {
  include brewcask
  include caffeine
  include chrome
  include clojure
  include ctags
  include docker
  include elasticsearch
  include firefox
  include flux
  include hipchat
  include mysql
  include sequel_pro
  include sourcetree
  include skype
  include tmux
  include virtualbox
  include vlc

  class { 'vagrant':
    version => '1.7.4'
  }

  class { 'lighttable':
    version => '0.7.2'
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
  package { 'reattach-to-user-namespace':
    ensure => installed
  }
  package { 'vim':
    ensure => installed
  }
  package { 'boot-clj':
    ensure => installed
  }

  # casks
  package { 'beardedspice': provider => 'brewcask' }
}
