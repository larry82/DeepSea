class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.integer :atk
      t.integer :def
      t.integer :hp
      t.decimal :max_depth
      t.decimal :speed
      t.integer :capture_ability
      t.decimal :current_depth

      t.timestamps null: false
    end
  end
end
