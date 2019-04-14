class OrderplacedController < ApplicationController
    before_action :authenticate_user!
    #Used to show that order has been placed and orderhistory is saved
    def show
         @order_items = current_order.order_items
         
         @order_items.ids.each do |id| 
             @order_item = OrderItem.find(id)
             @order_item.purchased = true
             @order_item.user_id = current_user.id
         @order_history = OrderHistory.new
         @order_history.update_attribute(:product_id,@order_item.product_id)
         @order_history.update_attribute(:user_id,current_user.id)
         @order_history.update_attribute(:unit_price,@order_item.unit_price)
         @order_history.update_attribute(:quantity,@order_item.quantity)
         @order_history.update_attribute(:order_id,@order_item.order_id)
         @order_history.update_attribute(:total_price,@order_item.total_price)
         @order_history.save
         @order_item.destroy
     end
     #mail is sent to user after every successful purchase
        ApplicationMailer.send_cart_mail(current_user).deliver
    end
end
