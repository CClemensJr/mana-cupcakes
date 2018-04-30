class PagesController < ApplicationController
  def home
  end

  def contact
  end

  def about
  end

  def menu
    @products = Product.all
    @order_item = current_order.order_items.new
  end
end
