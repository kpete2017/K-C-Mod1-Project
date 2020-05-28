Player.destroy_all
Leaderboard.destroy_all
player1 = Player.create(name: 'Kyle',  score: 5000)
player2 = Player.create(name: 'David',  score: 30)
player3 = Player.create(name: 'John',  score: 27)
player4 = Player.create(name: 'Kaylee',  score: 25)
player5 = Player.create(name: 'Adam',  score: 20)
player6 = Player.create(name: 'Emily',  score: 17)
player7 = Player.create(name: 'Jenni',  score: 14)
player8 = Player.create(name: 'Haylee',  score: 13)
player9 = Player.create(name: 'Henry',  score: 11)
player10 = Player.create(name: 'George',  score: 9)
player11 = Player.create(name: 'Todd',  score: 8)
player12 = Player.create(name: 'Tim',  score: 6)
player13 = Player.create(name: 'Adrian',  score: 5)
player14 = Player.create(name: 'Jolee',  score: 1)

leaderboard = Leaderboard.create(name: "main")

player1.leaderboard = leaderboard
player2.leaderboard = leaderboard
player3.leaderboard = leaderboard
player4.leaderboard = leaderboard
player5.leaderboard = leaderboard
player6.leaderboard = leaderboard
player7.leaderboard = leaderboard
player8.leaderboard = leaderboard
player9.leaderboard = leaderboard
player10.leaderboard = leaderboard
player11.leaderboard = leaderboard
player12.leaderboard = leaderboard
player13.leaderboard = leaderboard
player14.leaderboard = leaderboard

player1.save
player2.save
player3.save
player4.save
player5.save
player6.save
player7.save
player8.save
player9.save
player10.save
player11.save
player12.save
player13.save
player14.save

leaderboard.save


