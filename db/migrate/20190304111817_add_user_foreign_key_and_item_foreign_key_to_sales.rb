class AddUserForeignKeyAndItemForeignKeyToSales < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :sales, :users, column: :user_id
    add_foreign_key :sales, :items, column: :item_id
  end
end
