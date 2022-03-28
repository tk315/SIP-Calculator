class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :password
      t.text :phone
      t.text :state
      t.text :city
      t.text :dob
      t.integer :role, default: 0
      t.text :pan
      t.boolean :email_verified
      t.boolean :phone_verified
      t.timestamps
    end
  end
end
