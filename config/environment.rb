require 'bundler/setup'
Bundler.require
require "tty-prompt"
require 'faker'
require 'pry'
require 'active_record'
require_all 'lib'

leaderboard = Leaderboard.first
mm = MainMenu.new leaderboard
mm.show_main_menu