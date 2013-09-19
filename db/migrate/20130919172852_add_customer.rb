class AddCustomer < ActiveRecord::Migration
  def up
    add_column :managers, :customer_id, :string
  end
  def down
    remove_column :managers, :customer_id
  end
end
