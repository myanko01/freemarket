class AddAwesomeNestedSetColumnsToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :lft, :integer
    add_column :categories, :rgt, :integer
  end
end
