class ChangeWeaponsColumnApType < ActiveRecord::Migration
  def change
    change_column :weapons, :armor_piercing, :string
  end
end
