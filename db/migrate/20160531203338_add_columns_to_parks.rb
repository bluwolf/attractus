class AddColumnsToParks < ActiveRecord::Migration
  def change
    add_column :parks, :name, :string
    add_column :parks, :description, :string
    add_column :parks, :longitude, :decimal
    add_column :parks, :latitude, :decimal
    add_reference :parks, :user, index: true, foreign_key: true
  end
end
