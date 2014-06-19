class ChangeTypesOnWeaponsTableColumns < ActiveRecord::Migration
  def change
    change_column :weapons, :description, :text
    change_column :weapons, :concealability, :string
    change_column :weapons, :damage, :string
  end
end
