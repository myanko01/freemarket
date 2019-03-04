class AddForeignKeysToItems < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :items, :users, column: :user_id
    add_foreign_key :items, :brands, column: :brand_id
    add_foreign_key :items, :shipping_dates, column: :shipping_date_id
    add_foreign_key :items, :conditions, column: :condition_id
  end
end