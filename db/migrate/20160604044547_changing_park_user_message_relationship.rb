class ChangingParkUserMessageRelationship < ActiveRecord::Migration
  def change
    add_reference :messages, :user, index: true, foreign_key: true
    remove_reference :users, :park, index: true, foreign_key: true
  end
end
