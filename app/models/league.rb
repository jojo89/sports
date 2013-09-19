class League < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :manager
  has_many :teams
  has_many :games, through: :teams
end
