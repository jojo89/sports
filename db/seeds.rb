

manager = 2.times.map do
  Manager.create(username: Faker::Name.name, 
             email: Faker::Internet.email,
             password: Faker::Lorem.words.first)
end


league = 6.times.map do
  League.create(name: Faker::Address.state,
              age: "old",
              manager_id: rand(1..2))
end



team = 25.times.map do
  #create 25 teams
  @team =Team.create(:name => Faker::Address.city,:league_id => rand(1..6))
  #create 10 games for each team
    10.times.map do

      @date ="#{rand(12)}/#{rand(30)}/2013"
      @game =Game.create(league_id: @team.league_id,score: "1-12",day: @date)

      @team.games << @game



      
      # @ga.each do |g|
      #   Team.find(rand(1..25)) << g
      # end
      10.times.map do
        Winner.create(team_id: @team.id, game_id: @game.id)
      end  
      
    end    
end

# team2 = 25.times.map do
#   @team =Team.create(:name => Faker::Address.city,:league_id => rand(1..6))
#     @ga.each do |g|
#       @team.games << g
#     end
#   end    

