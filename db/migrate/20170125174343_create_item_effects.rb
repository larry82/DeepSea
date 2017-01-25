class CreateItemEffects < ActiveRecord::Migration
  def change
    create_table :item_effects do |t|
      t.string :category
      t.string :name
      t.integer :number

      t.timestamps null: false
    end
  end
end
