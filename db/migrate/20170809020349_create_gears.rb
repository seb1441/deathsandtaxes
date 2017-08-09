class CreateGears < ActiveRecord::Migration[5.1]
  def change
    create_table :gears do |t|

      t.timestamps
      t.string :head, default: "Beginner's Mercenary Hood"
      t.string :armor, default: "Beginner's Mercenary Jacket"
      t.string :shoes, default: "Beginner's Mercenary Shoes"
      t.string :mainhand, default: "Beginner's Broadsword"
      t.string :offhand, default: "Beginner's Shield"
    end
  end
end
