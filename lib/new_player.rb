class NewPlayer
    
    def initialize leaderboard, mainmenu
        system 'clear'
        banner = File.read "bannerfile.txt"
        puts banner.colorize :light_blue
        player_banner = File.read "new_player_banner.txt"
        puts player_banner
        @mainmenu = mainmenu
        @leaderboard = leaderboard
        intro
    end

    
    def intro
        puts "Welcome to Hangman! What should your wanted poster read?"
        name_input = gets.chomp
        player = Player.new(name_input, @leaderboard, 0)
        CatagoryChoice.new @mainmenu, player
    end
end