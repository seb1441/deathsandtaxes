class ChangeGearTypeToUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :head, :string
    change_column :users, :armor, :string
    change_column :users, :shoes, :string
    change_column :users, :mainhand, :string
    change_column :users, :offhand, :string
  end
end
