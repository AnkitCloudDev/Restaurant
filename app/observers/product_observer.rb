class ProductObserver < ActiveRecord::Observer
 observe :product
   def after_update(product)
   puts("observer called----------------<><><><><>?<<><><><><><><>--------------FOR product")  
   end
end