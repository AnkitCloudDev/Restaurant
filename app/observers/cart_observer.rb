class CartObserver < ActiveRecord::Observer
 observe :order
 
  def after_update(order)
 puts("observer called----------------<><><><><>?<<><><><><><><>--------------")  
 #@user=User.find(user_id)
 # if(trip.previous_changes.any?)
#		  UserMailer.trip_update(trip,@user).deliver
		  
 # end
  end
end