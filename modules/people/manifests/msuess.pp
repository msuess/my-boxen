class people::msuess {

  include people::msuess::os
  include people::msuess::shell
  include people::msuess::applications

  include android::sdk
  include android::tools
  include android::platform_tools

  include ruby

  android::build_tools { '20': }

  ruby_gem { 'puppet for 2.1.2':
      gem => 'puppet',
      version => '~> 3.7.3',
      ruby_version => '2.1.2'
  }
  ruby_gem { 'librarian-puppet for 2.1.2':
      gem => 'librarian-puppet',
      version => '~> 2.0.0',
      ruby_version => '2.1.2'
  }
  ruby_gem { 'nokogiri for 2.1.2':
      gem => 'nokogiri',
      version => '1.6.5',
      ruby_version => '2.1.2'
  }
  # My dotfile repository
  $home = "/Users/${::boxen_user}"
  $dotfiles_dir = "${boxen::config::srcdir}/dotfiles"
  $ohmyzsh_dir = "${home}/.oh-my-zsh"

  ruby::local { $home:
    version => '2.1.2'
  }

  repository { $dotfiles_dir:
    source => "msuess/dotfiles",
    ensure => "master",
    force => true
  }

  file { "${home}/.vim":
    ensure => "directory"
  }
  file { "${home}/.vim/.backup":
    ensure => "directory"
  }
  file { "${home}/.vim/.tmp":
    ensure => "directory"
  }
  file { "${home}/.vim/.undo":
    ensure => "directory"
  }
  file { "${home}/.vim/.yankring":
    ensure => "directory"
  }
  file { "${home}/.vim/local":
    ensure  => link,
    target  => "${dotfiles_dir}/vim/local",
    require => Repository[$dotfiles_dir]
  }
  file { "${home}/.vim/vimrc":
    ensure  => link,
    target  => "${dotfiles_dir}/vim/vimrc",
    require => Repository[$dotfiles_dir]
  }
  file { "${home}/.vimrc":
    ensure  => link,
    target  => "${dotfiles_dir}/vim/dotvimrc_osx",
    require => Repository[$dotfiles_dir]
  }


  repository { $ohmyzsh_dir:
    source => "robbyrussell/oh-my-zsh",
    ensure => "master",
    force => true
  }
  file { "${home}/.oh-my-zsh/custom/plugins":
    ensure => "directory",
    require => Repository[$ohmyzsh_dir]
  }
  file { "${home}/.oh-my-zsh/custom/themes":
    ensure => "directory",
    require => Repository[$ohmyzsh_dir]
  }
  file { "${home}/.oh-my-zsh/custom/plugins/boxen":
    ensure  => link,
    target  => "${dotfiles_dir}/zsh/ohmyzsh-plugins/boxen",
    require => Repository[$ohmyzsh_dir]
  }
  file { "${home}/.oh-my-zsh/custom/plugins/baseenv":
    ensure  => link,
    target  => "${dotfiles_dir}/zsh/ohmyzsh-plugins/baseenv",
    require => Repository[$ohmyzsh_dir]
  }
  file { "${home}/.oh-my-zsh/custom/plugins/dircolors":
    ensure  => link,
    target  => "${dotfiles_dir}/zsh/ohmyzsh-plugins/dircolors",
    require => Repository[$ohmyzsh_dir]
  }
  file { "${home}/.oh-my-zsh/custom/plugins/gnu_for_osx":
    ensure  => link,
    target  => "${dotfiles_dir}/zsh/ohmyzsh-plugins/gnu_for_osx",
    require => Repository[$ohmyzsh_dir]
  }
  file { "${home}/.oh-my-zsh/custom/plugins/uberconf":
    ensure  => link,
    target  => "${dotfiles_dir}/zsh/ohmyzsh-plugins/uberconf",
    require => Repository[$ohmyzsh_dir]
  }
  file { "${home}/.oh-my-zsh/custom/themes/marcosuess.zsh-theme":
    ensure  => link,
    target  => "${dotfiles_dir}/zsh/ohmyzsh-themes/marcosuess.zsh-theme",
    require => Repository[$ohmyzsh_dir]
  }

  file { "${home}/.zshrc":
    ensure  => link,
    target  => "${dotfiles_dir}/zsh/dot_zshrc",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.tmux.conf":
    ensure  => link,
    target  => "${dotfiles_dir}/tmux.conf",
    require => Repository[$dotfiles_dir]
  }

  $vundle_dir = "${home}/.vim/bundle/vundle"
  repository { $vundle_dir:
    source => "gmarik/vundle",
    ensure => "master",
    force => true
  }
  exec { "Install ViM Plugins":
    command => "vim -es +BundleInstall +qall",
    path => "/opt/boxen/homebrew/bin",
    require => Repository[$vundle_dir]
  }

  $ycm_dir = "${home}/.vim/bundle/YouCompleteMe/"
  exec { 'compile YouCompleteMe':
    command => "${ycm_dir}/install.sh",
    creates => "${ycm_dir}/third_party/ycmd/ycm_core.so",
    cwd => $ycm_dir,
    require => Repository[$vundle_dir]
  }
}
