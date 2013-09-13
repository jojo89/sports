require 'faker'

league = 20.times.map do
  League.create :name => Faker::Name.first_name,
              :age => "old"
end

team = 90.times.map do
  Team.create :name => Faker::Name.first_name,
              :league_id => rand(1..20)
end

games = 800.times.map do
  Game.create :league_id => rand(1..20) 
end

# encounter = 800.times.map do
#   Encounter.create :league_id => rand(1..20),
#                    :team_id => rand(1..45)
# end                   

winner = 800.times.map do
  Winner.create :game_id => rand(1..400),
                   :team_id => rand(1..90)
end    







