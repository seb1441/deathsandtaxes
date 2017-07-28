class AddFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :rank, :string, default: "Recruit"
    add_column :users, :head, :integer, defualt: 0
    add_column :users, :armor, :integer, default: 0
    add_column :users, :shoes, :integer, default: 0
    add_column :users, :mainhand, :integer, default: 0
    add_column :users, :offhand, :integer, default: 0
    add_column :users, :admin, :boolean, default: false
  end
end
