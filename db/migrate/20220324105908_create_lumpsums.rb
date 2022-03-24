class CreateLumpsums < ActiveRecord::Migration[5.2]
  def change
    create_table :lumpsums, :primary_key => :lumpsum_id do |t|
      t.integer :lumpsum_id, auto_increment: true
      t.integer :invested_amount
      t.integer :estimated_returns
      t.integer :total_value
      t.integer :owner_id

      t.timestamps
    end
  end
end
