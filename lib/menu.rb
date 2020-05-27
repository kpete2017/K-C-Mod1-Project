require 'pry'
class MainMenu
    def initialize
        system "clear"
        prompt = TTY::Prompt.new
        banner = File.read "bannerfile.txt"
        puts banner.colorize :light_blue


        choice = prompt.select("  MAIN MENU") do |menu|
            menu.choice 'New Game'
            menu.choice 'New Player'
            menu.choice 'Leaderboard'
            menu.choice 'EXIT'
        end

 
        if choice == 'New Game'
            HangmanGame.new
        end
        if choice == "New Player"
            intro
        end
        if choice == "Leaderboard"
            "Future Leaderboard"
        end
        if choice == "EXIT"
            system 'clear'
        end
    end    

    def intro
        puts "Welcome to Hangman! What should your wanted poster read?"
        name_input = gets.chomp
        self.player = Player.new(name_input)
        puts "Howdy #{self.player.name}!"
    end
end