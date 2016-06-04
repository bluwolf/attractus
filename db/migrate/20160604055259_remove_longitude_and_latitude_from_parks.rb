class RemoveLongitudeAndLatitudeFromParks < ActiveRecord::Migration
  def change
    remove_column :parks, :longitude
    remove_column :parks, :latitude
  end
end
