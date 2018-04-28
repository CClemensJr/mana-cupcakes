class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product

  before_save :set_unit_price
  before_save :set_total_price

  def unit_price
    #if the unit_price has been saved in the database
    if persisted?
      #return the unit_price that has been saved
      self[:unit_price]
    #otherwise
    else
      #return the product price
      product.price
    end
  end

  def total_price
    unit_price * quality
  end

  private

  def set_unit_price
    self[:unit_price] = unit_price
  end

  def set_total_price
    self[:total_price] = quantity * set_unit_price
  end
end