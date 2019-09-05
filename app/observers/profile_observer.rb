class ProfileObserver < ActiveRecord::Observer
 observe :profile
 	#observe the cart and take action depending upon order_hisotry
  def after_update(profile)
   
  puts("observer called----------------<><><><><>?<<><><><><><><>--------------")  
     @user=User.find(profile.user_id)
    if(profile.changes.any?)
    ApplicationMailer.send_observer_mail(@user).deliver
  
  end
  end
end