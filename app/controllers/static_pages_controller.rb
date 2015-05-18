class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
		@products = Product.limit(4)
  end

def thank_you
	@name = params[:name]
	@email = params[:email]
	@message = params[:message]
	ActionMailer::Base.mail(:from => @email, :to => 'bafarha@gmail.com', :subject => '#{@name} sent you a message, sucka!', :body => @message).deliver
end

end
