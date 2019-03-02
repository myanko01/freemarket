class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :zip
      t.string :prefecture
      t.string :city
      t.string :block
      t.string :building
      t.timestamps
    end
  end
end
