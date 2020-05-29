class Leaderboard < ActiveRecord::Base
    has_many :centers
    has_many :players, through: :centers
end