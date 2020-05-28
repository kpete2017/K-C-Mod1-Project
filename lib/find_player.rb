class FindPlayer
    def initialize leaderboard, main_menu
        @leaderboard = leaderboard 
        @main_menu = main_menu
        find_player
    end

    def find_player
        puts "Please Enter Your Name"
        player_search = gets.chomp
        player = find_player_search player_search
        CatagoryChoice.new @main_menu, player
    end

    def find_player_search player_search
        Player.all.find do |player| 
            player.name == player_search 
        end
    end
end