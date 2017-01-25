class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :category
      t.string :info

      t.timestamps null: false
    end
  end
end
