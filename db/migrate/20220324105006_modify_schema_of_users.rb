class ModifySchemaOfUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_type, :text
    remove_column :users, :no_of_attempts, :integer
  end
end
