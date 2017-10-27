class CreateUlevels < ActiveRecord::Migration[5.0]
  def change
    create_table :ulevels do |t|
      t.references :user, foreign_key: true
      t.references :unit, foreign_key: true
      t.integer :level

      t.timestamps
    end
  end
end
