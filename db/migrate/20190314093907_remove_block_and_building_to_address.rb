class RemoveBlockAndBuildingToAddress < ActiveRecord::Migration[5.2]
  def change
    remove_column :addresses, :block, :string
    remove_column :addresses, :building, :string
  end
end
