class Order < ApplicationRecord
  has_many :order_items
  before_save :set_subtotal

  #if there is an order_item, multiply the quantity of order_items by the unit_price and then add everything in
  #the collection
  def subtotal
    order_items.collect { |order_item| order_item.valid? ? (order_item.unit_price * order_item.quantity) : 0 }.sum
  end

  private

  #set the subtotal before the input is saved.
  def set_subtotal
    self[:subtotal] = subtotal
  end
end
