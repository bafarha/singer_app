class UserMailer < ApplicationMailer
default from: "from@example.com"

	def contact_form(email, name, message)
	@message = message
  	mail(:from => email, 
	  		:to => 'bafarha@gmail.com', 
	  		:subject => "  #{name} sent you a message, sucka'!")
  end
end
