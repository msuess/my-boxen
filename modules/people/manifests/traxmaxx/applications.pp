class people::traxmaxx::applications {
  include caffeine
  include chrome
  include firefox
  include flux
  include invisionsync
  include littlesnitch
  include propane
  include skype
  include sequel_pro
  include tower
  include transmit
  include vlc


  class { 'intellij':
  	edition => 'ultimate',
    version => '13.0.1'
	}

  class { 'kaleidoscope':
    enable_cli => true,
    make_default => false
  }

  class { 'vmware_fusion':
    version => '6.0.2-1398658' 
  }

  # Homebrew Package
  package { 'ant':
    ensure => installed
  }
}