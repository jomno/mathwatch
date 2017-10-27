class AddBigToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_column :subjects, :big, :string
  end
end
