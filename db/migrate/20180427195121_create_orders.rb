class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.decimal :subtotal, precision: 8, scale: 2
      t.decimal :total, precision: 8, scale: 2
      t.decimal :tax, precision: 8, scale: 2
      t.decimal :shipping, precision: 8, scale: 2

      t.timestamps
    end
  end
end
