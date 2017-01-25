class CreateLivingbeings < ActiveRecord::Migration
  def change
    create_table :livingbeings do |t|
      t.string :category
      t.string :name
      t.string :info
      t.integer :atk
      t.integer :hp
      t.integer :def
      t.integer :captured_probability

      t.timestamps null: false
    end
  end
end
