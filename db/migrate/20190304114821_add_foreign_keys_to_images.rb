class AddForeignKeysToImages < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :images, :items, column: :item_id
  end
end
