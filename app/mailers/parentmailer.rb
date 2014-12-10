class Parentmailer < ActionMailer::Base

  # Default Mail Values
 # default from: "brian.umbarger@gmail.com", :to => { Family.pluck(:email) }

  def send_email( family )
  	mail(to: @user.email, subject: "Word", reply_to: 'dev@null.com')
  end
end
