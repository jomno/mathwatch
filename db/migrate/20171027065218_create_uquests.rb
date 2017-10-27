class CreateUquests < ActiveRecord::Migration[5.0]
  def change
    create_table :uquests do |t|
      t.references :user, foreign_key: true
      t.references :quest, foreign_key: true
      t.boolean :correct

      t.timestamps
    end
  end
end
