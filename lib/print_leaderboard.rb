class PrintLeaderboard

    def initialize leaderboard
        @leaderboard = leaderboard
        @prompt = TTY::Prompt.new
    end

    def show_leaderboard main_menu
        @main_menu = main_menu
        system 'clear'
        banner = File.read "bannerfile.txt"
        puts banner.colorize :light_blue
        leaderbanner = File.read "leaderbannerfile.txt"  
        puts leaderbanner
        print_players
        answer = @prompt.yes? "\n\n Main Menu?"
        if answer
            @main_menu.show_main_menu
        else
            system 'clear'
            system 'exit'
        end
    end

    def print_players
        @leaderboard.players.each do |player|
            puts " NAME: #{player.name} | SCORE: #{player.score}"
        end    
    end

end