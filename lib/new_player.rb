class NewPlayer
    
    def initialize leaderboard, mainmenu
        system 'clear'
        banner = File.read "Banners/bannerfile.txt"
        puts banner.colorize :light_blue
        player_banner = File.read "Banners/new_player_banner.txt"
        puts player_banner
        @mainmenu = mainmenu
        @leaderboard = leaderboard
        intro
    end

    
    def intro
        puts "Welcome to Hangman! What should your wanted poster read?"
        name_input = gets.chomp
        player = Player.create(name: name_input, score: 0)
        Center.create(leaderboard_id: Leaderboard.first.id, player_id: player.id)
        CatagoryChoice.new @mainmenu, player
    end
end