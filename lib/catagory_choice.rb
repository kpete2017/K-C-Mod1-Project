class CatagoryChoice
    def initialize main_menu, player
        @player = player
        @main_menu = main_menu
        system 'clear'
        @prompt = TTY::Prompt.new
        @banner = File.read "Banners/bannerfile.txt"
        @category_banner = File.read "Banners/category_banner.txt"
        puts @banner.colorize :light_blue
    
        choice = @prompt.select(@category_banner, per_page: 20) do |menu|
            menu.choice 'Basketball Teams'
            menu.choice 'Super Heros'
            menu.choice 'Animals'
            menu.choice 'Harry Potter'
            menu.choice 'Lord Of The Rings'
            menu.choice 'Bands'
            menu.choice 'Star Wars Characters'
            menu.choice 'South Park Characters'
            menu.choice 'Pokemon'
            menu.choice 'Dr Who'
            menu.choice 'Seinfeld'
            menu.choice 'Dragon Ball'
            menu.choice 'Super Smash Bros'
            menu.choice 'Videogame Titles'
            menu.choice 'Videogame Consoles'
            menu.choice 'Car Manufacturers'
            menu.choice 'Languages'
            menu.choice 'Captial Cities'
            menu.choice 'Apps'
            menu.choice 'Universities'
        end

        if choice == 'Basketball Teams'
            answer = Faker::Sports::Basketball.team
        elsif choice == 'Super Heros'
            answer = Faker::Superhero.name
        elsif choice == 'Animals'
            answer = Faker::Creature::Animal.name
        elsif choice == 'Harry Potter'
            answer = Faker::Movies::HarryPotter.character
        elsif choice == 'Lord Of The Rings'
            answer = Faker::Movies::LordOfTheRings.character
        elsif choice == 'Bands'
            answer = Faker::Music.band
        elsif choice == 'Star Wars Characters'
            answer = Faker::Movies::StarWars.character
        elsif choice == 'South Park Characters'
            answer = Faker::TvShows::SouthPark.character
        elsif choice == 'Pokemon'
            answer = Faker::Games::Pokemon.name
        elsif choice == 'Dr Who'
            answer = Faker::TvShows::DrWho.character
        elsif choice == 'Seinfeld'
            answer = Faker::TvShows::Seinfeld.character
        elsif choice == 'Dragon Ball'
            answer = Faker::JapaneseMedia::DragonBall.character
        elsif choice == 'Super Smash Bros'
            answer = Faker::Games::SuperSmashBros.fighter
        elsif choice == 'Videogame Titles'
            answer = Faker::Game.title
        elsif choice == "Videogame Consoles"
            answer = Faker::Game.platform
        elsif choice == 'Car Manufacturers'
            answer = Faker::Vehicle.manufacture
        elsif choice == 'Languages'
            answer = Faker::Nation.language
        elsif choice == 'Captial Cities'
            answer = Faker::Nation.capital_city
        elsif choice == 'Apps'
            answer = Faker::App.name
        elsif choice == 'Universities'
            answer = Faker::University.name
        end
    HangmanGame.new answer, main_menu, player
    end
end