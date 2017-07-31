class ChangeDefaultValuesToUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :head, :string, default: "Beginner's Mercenary Hood"
    change_column :users, :armor, :string, default: "Beginner's Mercenary Jacket"
    change_column :users, :shoes, :string, default: "Beginner's Mercenary Shoes"
    change_column :users, :mainhand, :string, default: "Beginner's Broadsword"
    change_column :users, :offhand, :string, default: "Beginner's Shield"
  end
end
