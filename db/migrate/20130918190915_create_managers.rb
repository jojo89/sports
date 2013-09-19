class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :email
      t.string :username
      t.string :password

    end
  end
end
