class Player
    attr_accessor :name, :score
    @@all = []

    def initialize name, leaderboard , score
        @name = name
        @score = score
        @leaderboard = leaderboard
        @leaderboard.add_player self
        @@all << self
    end
    
    def leaderboard
        @leaderboard
    end

    def self.all
        @@all
    end
end