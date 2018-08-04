class CoreviewsController < ApplicationController
    def create
    @coreview = Coreview.new                       
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
end
