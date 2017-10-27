class AddCntToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cnt, :integer
  end
end
