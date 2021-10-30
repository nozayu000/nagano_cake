class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
     
      t.integer :customer_id
      t.string :postal_code
      t.string :address
      t.string :name
      t.integer :shopping_cost
      t.integer :total_payment
      t.integer :payment_method, null: false, default: 0
      t.integer :order_status, null: false, default: 0
      t.datetime :created_at, default: -> { 'NOW()' }
      t.datetime :updated_at, default: -> { 'NOW()' }

      t.timestamps
    end
  end
end
