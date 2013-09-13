class League < ActiveRecord::Base
  # Remember to create a migration!
  has_many :teams
  has_many :games, through: :teams
end
