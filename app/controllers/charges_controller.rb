class ChargesController < ApplicationController
  before_action :amount_to_be_charged
  before_action :set_description

  def new
  end

  def create
    customer = StripeTool.create_customer(email: params[:stripeEmail],
                                          stripe_token: params[:stripeToken])

    charge = StripeTool.create_charge(customer_id: customer.id,
                                      amount: @amount,
                                      description: @description)

    redirect_to thanks_path
    
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
  end

  def thanks

  end

  private

  def amount_to_be_charged
    @amount = 5500
  end

  def set_description
    @description = "Thank you for eating our cupcakes."
  end
end
