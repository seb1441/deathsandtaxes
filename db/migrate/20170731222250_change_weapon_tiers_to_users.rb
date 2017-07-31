class ChangeWeaponTiersToUsers < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :scythe, :sickle
    remove_column :users, :weaponranged
    remove_column :users, :weaponmagic
    remove_column :users, :weaponmelee
    remove_column :users, :weaponoffhand
    add_column :users, :wepfire, :integer, default: 1
    add_column :users, :wepholy, :integer, default: 1
    add_column :users, :weparcane, :integer, default: 1
    add_column :users, :wepfrost, :integer, default: 1
    add_column :users, :wepcursed, :integer, default: 1
    add_column :users, :weptome, :integer, default: 1
    add_column :users, :wepbow, :integer, default: 1
    add_column :users, :wepspear, :integer, default: 1
    add_column :users, :wepnaturestaff, :integer, default: 1
    add_column :users, :wepdagger, :integer, default: 1
    add_column :users, :wepquarterstaff, :integer, default: 1
    add_column :users, :weptorch, :integer, default: 1
    add_column :users, :wepsword, :integer, default: 1
    add_column :users, :wepbattleaxe, :integer, default: 1
    add_column :users, :wephammer, :integer, default: 1
    add_column :users, :wepmace, :integer, default: 1
    add_column :users, :wepcrossbow, :integer, default: 1
    add_column :users, :wepshield, :integer, default: 1
  end
end
