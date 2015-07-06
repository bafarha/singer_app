class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  validates :body, presence: true
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, numerically: { only_integer: true }

  def create
  	@product = Product.find(params[:product_id])
  	@comment = @product.comments.new(comment_params)
  	@comment.user = current_user
  	respond_to do |format|
  		if @comment.save
  			format.html { redirect_to @product, notice: 'Thanks for sharing your thoughts!' }
  			format.json { render :show, status: :created, location: @product }
  		else
  			format.html { redirect_to @product, alert: 'Your review was missing something...' }
  			format.json { render json: @comment.errors, status: :unprocessabel_entity }
  		end
  	end
  end
  
end
