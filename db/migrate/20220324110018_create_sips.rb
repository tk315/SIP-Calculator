class CreateSips < ActiveRecord::Migration[5.2]
  def change
    create_table :sips , :primary_key => :sip_id do |t|
      t.integer :sip_id, auto_increment: true
      t.integer :invested_amount
      t.integer :estimated_returns
      t.integer :total_value
      t.integer :owner_id

      t.timestamps
    end
  end
end
