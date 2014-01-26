class people::traxmaxx::applications {
  include caffeine
  include chrome
  include firefox
  include flux
  include skype
  include sequel_pro


  class { 'intellij':
  	edition => 'ultimate',
    version => '13.0.1'
	}

  class { 'vmware_fusion':
    version => '6.0.2-1398658' 
  }
}