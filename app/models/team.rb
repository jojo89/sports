class Team < ActiveRecord::Base
  # Remember to create a migration!
  has_many :away_games, class_name: "Game", foreign_key: :away_team_id
  has_many :home_games, class_name: "Game", foreign_key: :home_team_id
  # has_and_belongs_to_many :games
  has_many :scores, through: :home_games
  has_many :scores, through: :away_games
end
