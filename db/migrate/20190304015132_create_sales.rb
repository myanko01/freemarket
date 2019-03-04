class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.reference :user, null: false, foreign_key:true
      t.reference :item, null: false, foreign_key:true
      t.integer :status, null: false, default: 0
      t.timestamps
    end
  end
end
