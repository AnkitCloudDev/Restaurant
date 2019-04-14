class ApplicationMailer < ActionMailer::Base
  default from: 'charlienoreply@gmail.com'
  layout 'mailer'
  #send mail after order is placed
  def send_cart_mail(user)
      
       mail to: user.email, subject: "Cart", from:'charlienoreply@gmail.com'
  end
   #send mail after profile is updated
  def send_observer_mail(user)
       mail to: user.email, subject: "Changes to Cart", from:'charlienoreply@gmail.com'
  end
   
end
