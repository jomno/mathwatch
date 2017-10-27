class CreateQuests < ActiveRecord::Migration[5.0]
  def change
    create_table :quests do |t|
      t.string :info
      t.string :title
      t.string :content
      t.string :image
      t.integer :answer

      t.timestamps
    end
  end
end
