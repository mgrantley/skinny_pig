class Coach < ActiveRecord::Base
    has_many :periods
    has_many :profiles, through: :periods
    has_many :games, through: :periods
    has_many :teams, through: :periods
    
    has_many :basic_stats, source: :basic_stats, through: :games
    has_many :plays, source: :plays, through: :games
end
