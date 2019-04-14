class CartsController < ApplicationController
  before_action :authenticate_user!
  #used to show all the items present in cart
  def show
    @order_items = current_order.order_items
  end
  
end
