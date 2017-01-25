class CreateStorages < ActiveRecord::Migration
  def change
    create_table :storages do |t|
      t.references :item, index: true, foreign_key: true
      t.references :character, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
