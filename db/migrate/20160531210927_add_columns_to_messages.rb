class AddColumnsToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :content, :string
    add_reference :messages, :park, index: true, foreign_key: true
  end
end
