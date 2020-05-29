require_relative 'config/environment'

leaderboard = Leaderboard.first
mm = MainMenu.new leaderboard
mm.show_main_menu

