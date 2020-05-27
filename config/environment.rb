require 'bundler/setup'
Bundler.require
require "tty-prompt"
require 'faker'
require 'pry'

require_all 'lib'

leaderboard = Leaderboard.new
player1 = Player.new "bob", leaderboard
player2 = Player.new "jerry", leaderboard
player3 = Player.new "tom", leaderboard
player4 = Player.new "james", leaderboard
player5 = Player.new "doug", leaderboard
player6 = Player.new "paul", leaderboard
player7 = Player.new "john", leaderboard

MainMenu.new leaderboard
