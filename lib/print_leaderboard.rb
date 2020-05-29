class PrintLeaderboard

    def initialize leaderboard
        @leaderboard = leaderboard
        @prompt = TTY::Prompt.new
    end

    def show_leaderboard main_menu
        @main_menu = main_menu
        system 'clear'
        banner = File.read "Banners/bannerfile.txt"
        puts banner.colorize :light_blue
        leaderbanner = File.read "Banners/leaderbannerfile.txt"  
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

    def organize_from_highest_score_to_lowest 
        @leaderboard.players.sort_by do | player |
            player.score
        end.reverse
    end

    def print_players
        organize_from_highest_score_to_lowest.each do |player|
            puts " NAME: #{player.name} | SCORE: #{player.score}"
        end    
    end

end