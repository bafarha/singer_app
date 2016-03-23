class UserMailer < ApplicationMailer
default from: "blake@blakefarha.com"

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

  def payment(user, product)
    @product = product
    @user = user
    mail( :to=> user.email, :subject => "#{user.first_name}, thanks for your purchase of #{product.name}!")
  end
end
