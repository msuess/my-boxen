# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.3.4"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "gcc",        "2.0.100"
github "git",        "1.3.7"
github "homebrew",   "1.6.0"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "mysql",      "1.2.0"
github "nodejs",     "3.5.0"
github "openssl",    "1.0.0"
github "postgresql", "3.0.0"
github "pkgconfig",  "1.0.0"
github "repository", "2.2.0"
github "ruby",       "7.1.6"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "sysctl",     "1.0.0"
github "xquartz",    "1.1.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
github "android",       "1.1.0"
github "caffeine",      "1.0.0"
github "chrome",        "1.1.2"
github "firefox",       "1.1.7"
github "fish",          "1.0.0"
github "flux",          "0.0.1"
github "intellij",      "1.4.0"
github "iterm2",        "1.0.6"
github "java",          "1.2.0"
github "osx",           "2.2.2"
github "propane",       "1.0.0"
github "skype",         "1.0.8"
github "sequel_pro",    "1.0.1"
github "tower",         "1.0.0"
github "transmit",      "1.0.2"
github "vlc",           "1.0.5"
github "vmware_fusion", "1.1.0"