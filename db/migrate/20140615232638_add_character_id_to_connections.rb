class AddCharacterIdToConnections < ActiveRecord::Migration
  def change
    add_column :connections, :character_id, :integer
  end
end
