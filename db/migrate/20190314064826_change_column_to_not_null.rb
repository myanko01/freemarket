class ChangeColumnToNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :phone_number, :string, limit: 20, null: true
  end
end
