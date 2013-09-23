class Team < ActiveRecord::Base
  # Remember to create a migration!

  
  has_and_belongs_to_many :games
  has_many :scores, through: :games
 
end
