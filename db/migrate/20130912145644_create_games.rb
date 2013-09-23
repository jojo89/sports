class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :home_team_id
      t.integer :away_team_id
      t.belongs_to :league
      t.string :score
      t.timestamps
    end  
  end
end
