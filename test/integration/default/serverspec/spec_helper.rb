require 'serverspec'
require 'pathname'
require 'net/ssh'
require 'highline/import'

include Serverspec::Helper::Exec
include Serverspec::Helper::Ssh
include Serverspec::Helper::DetectOS

RSpec.configure do |config|
  config.color = true
  config.tty = true
  config.formatter = :documentation
  config.before :all do
    config.os = backend(Serverspec::Commands::Base).check_os
    config.path = '/sbin:/usr/sbin'
  end

  # if ENV['ASK_SUDO_PASSWORD']
  #   config.sudo_password = ask("Enter sudo password: ") { |q| q.echo = false }
  # else
  #   config.sudo_password = ENV['SUDO_PASSWORD']
  # end
  #
  # if ENV['ASK_LOGIN_PASSWORD']
  #   options[:password] = ask("\nEnter login password: ") { |q| q.echo = false }
  # else
  #   options[:password] = ENV['LOGIN_PASSWORD']
  # end
  #
  config.host  = host
  options = Net::SSH::Config.for(config.host)
  user    = options[:user] || Etc.getlogin
  config.ssh   = Net::SSH.start(config.host, user, options)
end
