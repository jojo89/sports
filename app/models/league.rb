class League < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :manager
  has_many :teams
  has_many :home_games, through: :teams, source: :home_games
  has_many :away_games, through: :teams, source: :away_games
end
