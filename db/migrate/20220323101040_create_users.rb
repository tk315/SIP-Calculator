class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.text :phone
      t.text :password
      t.boolean :email_verified
      t.boolean :phone_verified
      t.integer :no_of_attempts

      t.timestamps
    end
  end
end
