class ReviewController < ApplicationController
  
  def home_review
    @q = Review.ransack(params[:q])
    @reviews = @q.result(distict: true)
  end

  def index_review
    @review = Review.find(params[:review_id])
    @coreviews = @review.coreviews
  end


  def new_review
    
  end

  def create_review
    @review = Review.new
    @review.title = params[:review_title]
    @review.content = params[:review_content]
    @review.save

  redirect_to '/review/home_review'
  end

  def edit_review
    @review = Review.find(params[:review_id])
  end

  def update_review
    @review = Review.find(params[:review_id])
    @review.title = params[:review_title]
    @review.content = params[:review_content]
    @review.save

     redirect_to :controller => 'review', :action => 'index_review'
  end

  def destroy_review
    @review = Review.find(params[:review_id])
    @review.destroy

    redirect_to '/review/home_review'
  end
end
