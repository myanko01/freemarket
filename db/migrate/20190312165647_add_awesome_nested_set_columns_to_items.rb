class AddAwesomeNestedSetColumnsToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :parent_id, :integer
    add_column :items, :lft, :integer
    add_column :items, :rgt, :integer
  end
end
