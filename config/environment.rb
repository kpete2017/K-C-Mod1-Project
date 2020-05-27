require 'bundler/setup'
Bundler.require
require "tty-prompt"
require 'faker'

require_all 'lib'

menu = MainMenu.new
