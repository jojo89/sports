class AddManager < ActiveRecord::Migration
  def up
    add_column :leagues, :manager_id, :integer
  end
  def down
    remove_column :leagues, :manager_id
  end
end
