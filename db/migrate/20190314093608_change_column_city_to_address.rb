class ChangeColumnCityToAddress < ActiveRecord::Migration[5.2]
  def change
    rename_column :addresses, :city, :address_detail
  end
end
