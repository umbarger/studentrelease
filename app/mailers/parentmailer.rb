class Parentmailer < ActionMailer::Base

  # Default Mail Values
 # default from: "brian.umbarger@gmail.com", :to => { Family.pluck(:email) }

  def release_mail(family)
  	# Overriding the to default
  	mail( to: @family.email, subject: 'Student Released', reply_to: 'brian.umbarger@gmail.com') 
  end
end
