class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :category
      t.string :info
      t.string :name
      t.integer :price
      t.integer :weight

      t.timestamps null: false
    end
  end
end
