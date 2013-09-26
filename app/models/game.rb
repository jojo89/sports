class Game < ActiveRecord::Base
  # Remember to create a migration!
  
  
  belongs_to :home_team, class_name: "Team"
  belongs_to :away_team, class_name: "Team"
  # has_and_belongs_to_many :teams
  has_many :scores

  def score_array
    scores=[]
    self.scores.each do |s|  
      scores << s.amount 
    end
    scores
  end  

  def victory
    @scores=self.scores
    count= 0
    winner= nil
    @scores.each do |t|  
      if t.amount >= count
        winner= t.team.name
      else
        winner= "tie"
      end
      
    end
    winner
  end  
  

end
