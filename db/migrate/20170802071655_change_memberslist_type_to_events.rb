class ChangeMemberslistTypeToEvents < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :memberslist, :string, array: true, default: []
  end
end
