class RemoveUserAndParkReference < ActiveRecord::Migration
  def change
    remove_reference :parks, :user, index: true, foreign_key: true
    add_reference :users, :park, index: true, foreign_key: true
  end
end
