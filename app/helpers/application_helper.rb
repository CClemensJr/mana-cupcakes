module ApplicationHelper
  def current_order
    #if the order_id for this session has been initialized
    if !session[:order_id].nil?
      #find the order_id for the current session
      Order.find(session[:order_id])
    #otherise
    else
      #create a new order
      Order.new
    end
  end
end
