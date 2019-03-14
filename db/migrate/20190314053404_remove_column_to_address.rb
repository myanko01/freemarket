class RemoveColumnToAddress < ActiveRecord::Migration[5.2]
  def change
    remove_column :addresses, :last_name, :string
    remove_column :addresses, :last_name_kana, :string
  end
end
