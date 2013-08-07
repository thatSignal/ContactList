class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name, :null => false
      t.string :email
      t.string :phone
      t.string :address
      t.integer :user_id

      t.timestamps
    end

    add_index :contacts, :user_id
  end
end
