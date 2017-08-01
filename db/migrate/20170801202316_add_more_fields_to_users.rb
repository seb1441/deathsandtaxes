class AddMoreFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :avitempower, :integer, default: 1
    add_column :users, :reaver, :integer, default: 1
    add_column :users, :adventurer, :integer, default: 1
  end
end
