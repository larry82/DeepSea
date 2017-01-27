class CreateMapLivingbeings < ActiveRecord::Migration
  def change
    create_table :map_livingbeings do |t|
      t.references :map, index: true, foreign_key: true
      t.references :livingbeing, index: true, foreign_key: true
      t.string :category
      t.string :name
      t.string :info
      t.integer :atk
      t.integer :hp
      t.integer :def
      t.integer :captured_probability
      t.integer :exp

      t.timestamps null: false
    end
  end
end
