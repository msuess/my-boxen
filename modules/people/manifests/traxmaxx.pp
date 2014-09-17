class people::traxmaxx {

  include people::traxmaxx::os
  include people::traxmaxx::shell
  include people::traxmaxx::applications

  include android::sdk
  include android::tools
  include android::platform_tools

  android::build_tools { '20': }

  # My dotfile repository
  $home = "/Users/${::boxen_user}"
  $dotfiles_dir = "${boxen::config::srcdir}/dotfiles"

  repository { $dotfiles_dir:
    source => "Traxmaxx/my-dotfiles",
    ensure => "master",
    force => true
  }

  file { "${home}/.gitconfig":
    ensure  => link,
    target  => "${dotfiles_dir}/.gitconfig",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.githelpers":
    ensure  => link,
    target  => "${dotfiles_dir}/.githelpers",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.gitignore_global":
    ensure  => link,
    target  => "${dotfiles_dir}/.gitignore_global",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.config/fish/boxen.fish":
    ensure  => link,
    target  => "${dotfiles_dir}/.config/fish/boxen.fish",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.config/fish/config.fish":
    ensure  => link,
    target  => "${dotfiles_dir}/.config/fish/config.fish",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.config/fish/nodenv.fish":
    ensure  => link,
    target  => "${dotfiles_dir}/.config/fish/nodenv.fish",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.config/fish/prompt.fish":
    ensure  => link,
    target  => "${dotfiles_dir}/.config/fish/prompt.fish",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.config/fish/rbenv.fish":
    ensure  => link,
    target  => "${dotfiles_dir}/.config/fish/rbenv.fish",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.rbenv":
    ensure  => link,
    target  => "/opt/boxen/rbenv/",
    require => Repository[$dotfiles_dir]
  }
}
