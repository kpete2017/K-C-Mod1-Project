class Player
    attr_accessor :name, :score
    def initialize name, leaderboard ,score = 0
        @name = name
        @score = score
        @leaderboard = leaderboard
        @leaderboard.add_player self

    end
    
    def leaderboard
        @leaderboard
    end


end