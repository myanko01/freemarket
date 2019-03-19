class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.references :user ,       null: false
      t.integer    :token,          null: false
      t.timestamps
    end
  end
end
