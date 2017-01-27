class AddLevelAndExpAndInfoDefaultToUser < ActiveRecord::Migration
  def change
  	change_column :characters, :atk, :integer, default: 10
  	change_column :characters, :def, :integer, default: 5
  	change_column :characters, :hp, :integer, default: 40
  	change_column :characters, :max_depth, :integer, default: 100
  	change_column :characters, :speed, :integer, default: 1
  	change_column :characters, :capture_ability, :integer, default: 1
  	change_column :characters, :current_depth, :integer, default: 0
  	add_column    :characters, :exp, :integer, default: 0
  	add_column    :livingbeings, :exp, :integer, default: 1
  end
end
