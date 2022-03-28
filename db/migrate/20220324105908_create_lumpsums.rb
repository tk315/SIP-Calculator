class CreateLumpsums < ActiveRecord::Migration[5.2]
  def change
    create_table :lumpsums do |t|
      t.integer :total_investment
      t.float   :expected_return_rate
      t.integer :time_period
      t.text    :date_of_application
      t.text    :date_of_maturity
      t.integer :invested_amount
      t.integer :estimated_returns
      t.integer :total_value
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
