class NewPlayer
    
    def initialize leaderboard, mainmenu
        @mainmenu = mainmenu
        @leaderboard = leaderboard
        intro
    end

    
    def intro
        puts "Welcome to Hangman! What should your wanted poster read?"
        name_input = gets.chomp
        player = Player.new(name_input, @leaderboard)
        CatagoryChoice.new @mainmenu, player
    end
end