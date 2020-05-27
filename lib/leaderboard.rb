require 'pry'
class Leaderboard

    def initialize
        @all_players = []
        @prompt = TTY::Prompt.new
    end

    def show_leaderboard main_menu
        @main_menu = main_menu
        system 'clear'
        banner = File.read "bannerfile.txt"
        puts banner.colorize :light_blue
        leaderbanner = File.read "leaderbannerfile.txt"  
        puts leaderbanner
        puts print_players
        answer = @prompt.yes? "Main Menu?"
        if answer
            @main_menu.show_main_menu
        end
    end

    def add_player player
        @all_players << player
    end

    def players
        @all_players
    end

    def print_players
        @all_players.map {|player| puts "#{player.name} : #{player.score}" }
    end

end