

class OrderHistoriesController < ApplicationController
  
  
  before_action :set_order_history, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /order_histories
  # GET /order_histories.json
  # Used to Show OrderHistory of the User
  def index
    @order_histories = OrderHistory.where(:user_id => current_user.id)
  end

  
end
