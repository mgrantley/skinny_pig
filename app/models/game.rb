class Game < ActiveRecord::Base
    has_many :periods
    has_many :plays
    has_many :basic_stats
    has_many :coaches, through: :periods
    has_many :players, through: :periods
    has_many :teams, through: :periods
    
    has_many :player_stats, source: :player, through: :basic_stats
    has_many :player_plays, source: :player, through: :plays
    
    has_many :coach_stats, source: :coach, through: :basic_stat
    has_many :coach_plays, source: :coach, through: :plays
    
    has_many :team_stats, source: :team, through: :basic_stat
    has_many :team_plays, source: :team, through: :plays
end
