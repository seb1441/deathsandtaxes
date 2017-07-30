class AddSkillsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :potion, :integer, default: 1
    add_column :users, :food, :integer, default: 1
    add_column :users, :crop, :integer, default: 1
    add_column :users, :herb, :integer, default: 1
    add_column :users, :animal, :integer, default: 1
    add_column :users, :wood, :integer, default: 1
    add_column :users, :fiber, :integer, default: 1
    add_column :users, :stone, :integer, default: 1
    add_column :users, :leather, :integer, default: 1
    add_column :users, :ore, :integer, default: 1
    add_column :users, :woodaxe, :integer, default: 1
    add_column :users, :stonehammer, :integer, default: 1
    add_column :users, :scythe, :integer, default: 1
    add_column :users, :skinningknife, :integer, default: 1
    add_column :users, :pickaxe, :integer, default: 1
    add_column :users, :clothhead, :integer, default: 1
    add_column :users, :clotharmor, :integer, default: 1
    add_column :users, :clothshoes, :integer, default: 1
    add_column :users, :leatherhead, :integer, default: 1
    add_column :users, :leatherarmor, :integer, default: 1
    add_column :users, :leathershoes, :integer, default: 1
    add_column :users, :platehead, :integer, default: 1
    add_column :users, :platearmor, :integer, default: 1
    add_column :users, :plateshoes, :integer, default: 1
    add_column :users, :weaponranged, :integer, default: 1
    add_column :users, :weaponmagic, :integer, default: 1
    add_column :users, :weaponmelee, :integer, default: 1
    add_column :users, :weaponoffhand, :integer, default: 1
  end
end
