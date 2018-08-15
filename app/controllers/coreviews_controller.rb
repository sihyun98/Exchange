class CoreviewsController < ApplicationController
    load_and_authorize_resource
    
    def create
    @coreview = Coreview.new       
    @coreview.user_id = current_user.id
    @coreview.content = params[:input_comment]                   
    @coreview.review_id = params[:review_id]
    @coreview.save
    
    redirect_to "/review/index_review/#{params[:review_id]}"
    end
  
  def destroy
    @coreview = Coreview.find(params[:coreviews_id])     
    @coreview.destroy           
   
    redirect_to "/review/index_review/#{params[:review_id]}"    
  end
  
  def edit
      @review=Review.find(params[:review_id])
      @coreview = Coreview.find(params[:coreviews_id])
  end

  def update
    @coreview = Coreview.find(params[:coreviews_id])
    @coreview.content = params[:input_comment]
    @coreview.save
    
    redirect_to "/review/index_review/#{params[:review_id]}"  
  end
end
