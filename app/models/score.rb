class Score < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :team
  belongs_to :game
end
