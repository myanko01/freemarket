class RemoveShipfromFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :ship_from, :string
  end
end
