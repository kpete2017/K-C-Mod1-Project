class Player < ActiveRecord::Base
    has_many :centers
    has_many :leaderboards, through: :centers
end