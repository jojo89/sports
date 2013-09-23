class Game < ActiveRecord::Base
  # Remember to create a migration!
  
  has_and_belongs_to_many :teams
  has_many :scores

  # def winner
  #   @scores=self.scores
  #   winner= 0
  #   @scores.each do |t|  
  #     if t.amount > winner
  #       winner= t.team.id
  #     else
  #       winner= "tie"
  #     end
      
  #   end
  #   winner
  # end  
  

end
