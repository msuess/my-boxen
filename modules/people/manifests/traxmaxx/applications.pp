class people::traxmaxx::applications {
  include caffeine
  include chrome
  include firefox
  include firefox::aurora
  include flux
  include invisionsync
  include littlesnitch
  include skype
  include sequel_pro
  include tower
  include transmit
  include viscosity
  include vlc


  class { 'intellij':
  	edition => 'ultimate',
    version => '13.1.4'
	}

  class { 'kaleidoscope':
    enable_cli => true,
    make_default => false
  }

  class { 'vmware_fusion':
    version => '7.0.0-2103067'
  }

  # Homebrew Package
  package { 'ant':
    ensure => installed
  }
  package { 'elasticsearch':
    ensure => installed
  }
}
