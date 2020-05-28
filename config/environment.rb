require 'bundler/setup'
Bundler.require
require "tty-prompt"
require 'faker'
require 'pry'

require_all 'lib'

leaderboard = Leaderboard.new
mm = MainMenu.new leaderboard
mm.show_main_menu
