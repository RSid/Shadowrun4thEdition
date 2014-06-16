class CreateWeaponsTable < ActiveRecord::Migration
  def change
    create_table :weapons do |table|
      table.string :name, null: false
      table.string :description
      table.integer :damage, null: false
      table.string :damage_type, null: false
      table.boolean :melee, null: false
      table.integer :concealability
      table.integer :armor_piercing
      table.string :mode
      table.string :recoil
      table.string :ammo
      table.string :legality

    end
  end
end
