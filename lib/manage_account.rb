class ManageAccount
    def initialize main_menu
        @main_menu = main_menu
        find_player
    end

    def find_player
        puts " Please Enter Your Name"
        player_search = gets.chomp
        player = find_player_search player_search
        prompt = TTY::Prompt.new
        @prompt = prompt

        choice = prompt.select(" Hi #{player}! What would you like to do to your account?") do |menu|
            menu.choice 'Delete Account'
            menu.choice 'Main Menu'
        end

        if choice == 'Delete Account'
            Player.where(name: player.name).destroy_all
            puts "Account Deleted"
            main_menu?
        elsif choice == 'Main Menu'
            @main_menu.show_main_menu
        end
    end

    def main_menu?
        answer = @prompt.yes? " Main Menu?"
        if answer
          @main_menu.show_main_menu
        else    
            system 'exit'
            system 'clear'
        end
      end

    def find_player_search player_search
        Player.all.find do |player| 
            player.name == player_search 
        end
    end
end