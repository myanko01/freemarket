class RemoveShippingDatesFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :shipping_date_id, :integer
  end
end
