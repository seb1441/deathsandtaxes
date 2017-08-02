class ChangeMemberslistDefaultToEvents < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :memberslist, :string, default: ""
  end
end
