class ReviewController < ApplicationController
  load_and_authorize_resource
  before_action :set_review, only: [:index_review, :edit_review, :update_review, :destroy_review]
  before_action :authenticate_user!, except: [:home_review]
 
  
  def home_review
    @q = Review.ransack(params[:q])
    @reviews = @q.result(distict: true)
    @reviews= Review.all
  end

  def index_review
    @coreviews = @review.coreviews
  end


  def new_review
     @review = Review.new
  end

  def create_review
     
    @review = Review.new(review_params)
    @review.user_id= current_user.id
   
    if @review.save
    else
    end
     
     redirect_to '/review/home_review'
  end

  def edit_review

  end

  def update_review
    @review.update(review_params)
    if @review.save
    else
    end
    
     redirect_to :controller => 'review', :action => 'index_review'
  end

  def destroy_review
    @review.destroy

    redirect_to '/review/home_review'
  end
  
  
  private
  
  def review_params
    params.require(:review).permit(:title, :content, :user_id)
  end
  
  def set_review
      @review = Review.find(params[:review_id])
  end

  
  
end