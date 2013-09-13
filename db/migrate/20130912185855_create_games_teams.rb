class CreateGamesTeams < ActiveRecord::Migration
  def change
    create_table :games_teams do |t|
      t.belongs_to :game
      t.belongs_to :team
    end  
  end
end
