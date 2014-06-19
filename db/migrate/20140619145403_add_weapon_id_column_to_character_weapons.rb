class AddWeaponIdColumnToCharacterWeapons < ActiveRecord::Migration
  def change
    add_column :character_weapons, :weapon_id, :integer, null: false
  end
end
