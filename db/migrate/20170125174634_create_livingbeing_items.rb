class CreateLivingbeingItems < ActiveRecord::Migration
  def change
    create_table :livingbeing_items do |t|
      t.references :livingbeing, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true
      t.integer :drop_probability

      t.timestamps null: false
    end
  end
end
