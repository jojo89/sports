class AddDate < ActiveRecord::Migration
   def up
     add_column :games, :day, :date
   end 
   def down
     remove_column :games, :day
   end   
end
