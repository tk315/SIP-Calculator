class CreateSips < ActiveRecord::Migration[5.2]
  def change
    create_table :sips do |t|
      t.integer :invested_amount
      t.integer :estimated_returns
      t.integer :total_value
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
