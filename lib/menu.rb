
class MainMenu
    def initialize
        system "clear"
        system "printf '\e[8;100;110t'" 
        prompt = TTY::Prompt.new
        banner = File.read "bannerfile.txt"
        puts banner.colorize :light_blue
        menu_banner = File.read "menubanner.txt"


        choice = prompt.select(menu_banner) do |menu|
            menu.choice 'New Game'
            menu.choice 'New Player'
            menu.choice 'Leaderboard'
            menu.choice 'EXIT'
        end

 
        if choice == 'New Game'
            CatagoryChoice.new
        elsif choice == "New Player"
            intro
        elsif choice == "Leaderboard"
            "Future Leaderboard"
        elsif choice == "EXIT"
            system 'exit'
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