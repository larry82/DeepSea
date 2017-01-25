class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.references :character, index: true, foreign_key: true
      t.string :category

      t.timestamps null: false
    end
  end
end
