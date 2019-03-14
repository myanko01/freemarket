class AddUserToAddress < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :user, :bigint
  end
end
