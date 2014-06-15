class CreateCharacterQualities < ActiveRecord::Migration
  def change
    create_table :characterqualities do |table|
      table.integer :character_id, null: false
      table.integer :quality_id, null: false
      table.string :affect_rating
    end
  end
end
