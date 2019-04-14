class ProfileObserver < ActiveRecord::Observer
 observe :order_history
 	#observe the cart and take action depending upon order_hisotry
  def after_update(order_history)
   
  puts("observer called----------------<><><><><>?<<><><><><><><>--------------")  
     @user=User.find(order_history.user_id)
    if(profile.changes.any?)
    ApplicationMailer.send_observer_mail(@user).deliver
  
  end
  end
end