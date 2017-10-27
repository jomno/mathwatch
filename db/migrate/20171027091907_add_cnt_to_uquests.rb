class AddCntToUquests < ActiveRecord::Migration[5.0]
  def change
    add_column :uquests, :cnt, :integer
  end
end
