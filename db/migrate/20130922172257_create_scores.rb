class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :team_id
      t.integer :game_id
      t.integer :amount
    end  
  end
end
