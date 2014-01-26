class people::traxmaxx::os {

  include osx::software_update

  include osx::global::disable_remote_control_ir_receiver

  include osx::global::expand_save_dialog
  include osx::global::expand_print_dialog

  include osx::global::disable_autocorrect
  include osx::disable_app_quarantine

  include osx::finder::unhide_library
  include osx::finder::show_hidden_files
  include osx::no_network_dsstores

  class { 'osx::global::key_repeat_rate': rate => 0 }
  class { 'osx::global::key_repeat_delay': delay => 10 }

  include osx::dock::autohide
  include osx::dock::2d
  class { 'osx::dock::icon_size': size => 36 }
  class { 'osx::dock::position': position => 'bottom' }
}