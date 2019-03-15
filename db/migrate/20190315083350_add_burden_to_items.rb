class AddBurdenToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :burden, :integer
  end
end
