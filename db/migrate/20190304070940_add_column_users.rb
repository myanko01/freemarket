class AddColumnUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :last_name,       :string, null: false
    add_column :users, :first_name,      :string, null: false
    add_column :users, :last_name_kana,  :string, null: false
    add_column :users, :first_name_kana, :string, null: false
    add_column :users, :address,         :references, null: false, foreign_key: true
    add_column :users, :phone_number     :string, limit: 11
    add_column :users, :nickname         :string, null: false
  end
end
