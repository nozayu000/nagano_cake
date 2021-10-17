class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
    
      t.integer :item_id
      t.integer :order_id
      t.integer :price
      t.integer :amount
      t.integer :making_status, null: false, default: 0
      t.datetime :created_at, default: -> { 'NOW()' }
      t.datetime :updated_at, default: -> { 'NOW()' }

      t.timestamps
    end
  end
end
