class Game < ActiveRecord::Base
  # Remember to create a migration!
  
  has_and_belongs_to_many :teams
  has_many :winner

end
