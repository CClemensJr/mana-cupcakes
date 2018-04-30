class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.integer :product_id
      t.integer :order_id
      t.decimal :unit_price, precision: 8, scale: 2
      t.integer :quantity
      t.decimal :total_price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
