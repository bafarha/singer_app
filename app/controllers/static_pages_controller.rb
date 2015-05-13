class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
		@products = Product.limit(4)
  end

ActionMailer::Base.mail(:from => 'from@domain.com', :to=> 'to@domain.com', :subject => "Mr. T's awesome contacts", :body => 'I pity da fool.  Seriously.').deliver

def thank_you
	@name = params[:name]
	@email = params[:email]
	@message = params[:message]
	ActionMailer::Base.mail(:from => @email, :to => 'bafarha@gmail.com', :subject => '#{@name} sent you a message, sucka!', :body => @message).deliver
end

end
