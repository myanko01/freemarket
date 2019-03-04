class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :zip, :limit => 7
      t.string :prefecture, :limit => 4
      t.string :city
      t.string :block
      t.string :building
      t.timestamps
    end
  end
end
