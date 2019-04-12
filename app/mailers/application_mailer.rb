class ApplicationMailer < ActionMailer::Base
  default from: 'charlienoreply@gmail.com'
  layout 'mailer'
  def send_cart_mail(user)
      
       mail to: user.email, subject: "Cart", from:'charlienoreply@gmail.com'
  end
end
