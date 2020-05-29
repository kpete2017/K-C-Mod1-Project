Leaderboard.destroy_all
Player.destroy_all
Center.destroy_all

10.times do
    Player.create({
        name: Faker::Name.unique.name,
        score: 0
    })
end

Leaderboard.create ({name: "Main"})
Leaderboard.create ({name: "Basketball Teams"})
Leaderboard.create ({name: "Super Heros"})
Leaderboard.create ({name: "Animals"})
Leaderboard.create ({name: "Harry Potter"})
Leaderboard.create ({name: "Lord Of The Rings"})
Leaderboard.create ({name: "Bands"})
Leaderboard.create ({name: "Star Wars Characters"})
Leaderboard.create ({name: "South Park Characters"})
Leaderboard.create ({name: "Pokemon"})
Leaderboard.create ({name: "Dr Who"})
Leaderboard.create ({name: "Seinfeld"})
Leaderboard.create ({name: "Dragon Ball"})
Leaderboard.create ({name: "Super Smash Bros"})
Leaderboard.create ({name: "Videogame Titles"})
Leaderboard.create ({name: "Videogame Consoles"})
Leaderboard.create ({name: "Car Manufacturers"})
Leaderboard.create ({name: "Languages"})
Leaderboard.create ({name: "Captial Cities"})
Leaderboard.create ({name: "Apps"})
Leaderboard.create ({name: "Universities"})



10.times do
    Center.create ({
        leaderboard_id: Leaderboard.first.id,
        player_id: Player.all.sample.id,
    })
end