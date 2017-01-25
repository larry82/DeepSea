class CreateMapIncidents < ActiveRecord::Migration
  def change
    create_table :map_incidents do |t|
      t.references :map, index: true, foreign_key: true
      t.references :incident, index: true, foreign_key: true
      t.integer :position

      t.timestamps null: false
    end
  end
end
