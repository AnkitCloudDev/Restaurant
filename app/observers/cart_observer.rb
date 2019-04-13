class CartObserver < ActiveRecord::Observer
 observe :order
 
  def after_update(order)
   
# puts("observer called----------------<><><><><>?<<><><><><><><>--------------")  
# @user=User.find(current_user.id)
# if(order.previous_changes.any?)
#  ApplicationMailer.send_observer_mail(@user).deliver
#	  
  end
 # end
en