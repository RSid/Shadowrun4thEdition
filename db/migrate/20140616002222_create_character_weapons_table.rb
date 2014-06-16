class CreateCharacterWeaponsTable < ActiveRecord::Migration
  def change
    create_table :character_weapons do |table|
      table.string :character_id, null: false
      table.integer :rating

    end
  end
end
