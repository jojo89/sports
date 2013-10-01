
# @games = Game.all

# @games.each do |g|
#     Score.create(team_id: g.home_team_id, game_id: g.id, amount: rand(1..5))
#     Score.create(team_id: g.away_team_id, game_id: g.id, amount: rand(1..5))
# end    








manager = 1.times.map do
  Manager.create(username: Faker::Name.name, 
             email: Faker::Internet.email,
             password: Faker::Lorem.words.first)
end


league = 1.times.map do
  League.create(name: Faker::Address.state,
              age: "old",
              manager_id: 1)
end



team = 12.times.map do
  #create 25 teams
   Team.create(:name => Faker::Address.city,:league_id => 1)

end  


  # create 10 games for each team
  games=80.times.map do

      @date ="#{rand(1..12)}/#{rand(1..13)}/2013"
      @game =Game.create(league_id: 1, home_team_id: rand(1..6), away_team_id: rand(7..12), day: @date)
  
  end   

  p games.inspect

  games.each do |g|
      Score.create(team_id:g.home_team_id ,game_id:g.id,amount:rand(1..5))
      Score.create(team_id:g.away_team_id ,game_id:g.id,amount:rand(1..5))
  end     

 



      
#       # @ga.each do |g|
#       #   Team.find(rand(1..25)) << g
#       # end
#       # 10.times.map do
#       #   Winner.create(team_id: @team.id, game_id: @game.id)
#       # end  

      
#     end   

  

# end


# team2 = 25.times.map do
#   @team =Team.create(:name => Faker::Address.city,:league_id => rand(1..6))
#     @ga.each do |g|
#       @team.games << g
#     end
#   end    

