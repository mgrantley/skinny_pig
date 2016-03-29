class Period < ActiveRecord::Base
    belongs_to :coach
    belongs_to :combine_stat
    belongs_to :player
    belongs_to :profile
    belongs_to :team
    
    has_many :games
end
