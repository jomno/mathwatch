class CreateExplains < ActiveRecord::Migration[5.0]
  def change
    create_table :explains do |t|
      t.references :quest, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
