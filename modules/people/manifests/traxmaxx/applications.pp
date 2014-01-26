class people::traxmaxx::applications {
  include chrome
  include skype
  include sequel_pro

  class { 'intellij':
  	edition => 'ultimate',
    version => '13.0.1'
	}
}