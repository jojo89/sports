class CreateWinners < ActiveRecord::Migration
  def change
    create_table :winners do |t|
      t.belongs_to :game
      t.belongs_to :team
    end  
  end
end
