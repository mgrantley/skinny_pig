class Team < ActiveRecord::Base
    has_many :periods
    has_many :coaches, through: :periods
    has_many :players, through: :periods
    has_many :games, through: :periods
    
    has_many :basic_stats, source: :basic_stats, through: :games
    has_many :plays, source: :plays, through: :games
end
