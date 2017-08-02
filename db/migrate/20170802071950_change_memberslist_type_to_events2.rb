class ChangeMemberslistTypeToEvents2 < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :memberslist, :string
  end
end
