class ChangeColumnToAddress < ActiveRecord::Migration[5.2]
  def change
    rename_column :addresses, :first_name, :name
    rename_column :addresses, :first_name_kana, :name_kana
  end
end
