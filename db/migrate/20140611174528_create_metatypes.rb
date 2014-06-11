class CreateMetatypes < ActiveRecord::Migration
  def change
    create_table :users do |table|
      table.string :name, null: false
      table.string :special_ability
    end

  end
end
