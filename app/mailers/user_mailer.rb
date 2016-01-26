class UserMailer < ApplicationMailer
default from: "from@example.com"

	def contact_form(email, name, message)
	@message = message
  	mail(:from => email, 
	  		:to => 'bafarha@gmail.com', 
	  		:subject => "  #{name} sent you a message, sucka'!")
  	end

  	def welcome(user)
  		@appname = "Blake Farha"
  		mail( :to => user.email,
        :subject => "Welcome to #{@appname}!")
	end
end
