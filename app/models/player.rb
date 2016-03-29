class Player < ActiveRecord::Base
    has_many :periods
    has_one :combine_stat, through: :period
    has_many :games, through: :periods
    has_many :profiles, through: :periods
    has_many :teams, through: :periods
    has_many :coaches, through: :periods
    
    has_many :basic_stats
    has_many :plays
end
