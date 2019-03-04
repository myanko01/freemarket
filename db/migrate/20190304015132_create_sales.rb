class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.references :user, null: false
      t.references :item, null: false
      t.integer :status, null: false, default: 0
      t.timestamps
    end
  end
end
