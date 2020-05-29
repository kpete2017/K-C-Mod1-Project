class MainMenu
    def initialize leaderboard, player = "Guest"
        @player = player
        @leaderboard = leaderboard
        show_main_menu
    end 
    
    def show_main_menu
        system "clear"
        system "printf '\e[8;100;110t'" 
        prompt = TTY::Prompt.new
        banner = File.read "Banners/bannerfile.txt"
        puts banner.colorize :light_blue
        menu_banner = File.read "Banners/menubanner.txt"

        choice = prompt.select(menu_banner) do |menu|
            menu.choice 'Play As Guest'
            menu.choice 'Play As New Player'
            menu.choice 'Play As Existing Player'
            menu.choice 'Leaderboard'
            menu.choice 'Manage Account'
            menu.choice 'EXIT'
        end

        if choice == 'Play As Guest'
            CatagoryChoice.new self, @player
        elsif choice == "Play As New Player"
            NewPlayer.new @leaderboard, self
        elsif choice == "Play As Existing Player"
            FindPlayer.new @leaderboard, self
        elsif choice == "Leaderboard"
            pl = PrintLeaderboard.new @leaderboard
            pl.show_leaderboard self
        elsif choice == "Manage Account"
            ManageAccount.new self
        elsif choice == "EXIT"
            system 'exit'
            system 'clear'
        end
    end
end