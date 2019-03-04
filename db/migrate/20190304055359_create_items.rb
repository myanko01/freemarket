class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string     :name,           null: false
      t.integer    :price,          null: false
      t.text       :detail,         null: false
      t.references :user ,          null: false
      t.integer    :category_id,    null: false
      t.integer    :subcategory_id, null: false
      t.integer    :subsubcategory, null: false
      t.integer    :brand,          null: false
      t.string     :ship_from,      null: false
      t.references :shipping_date,  null: false
      t.references :condition,      null: false
      t.timestamps
    end
  end
end
