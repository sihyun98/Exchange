class CocoreviewsController < ApplicationController
  def create
    
    @cocoreview = Cocoreview.new
    @cocoreview.content = params[:input_comment]                    
    @cocoreview.coreview_id = params[:coreview_id]
    @cocoreview.save
    redirect_to "/review/index_review/#{params[:review_id]}"
    
  end

  def destroy
    @cocoreview = Cocoreview.find(params[:cocoreview_id])         
    @cocoreview.destroy
    redirect_to "/review/index_review/#{params[:review_id]}"
  end

  def edit
     @review=Review.find(params[:review_id])
     @coreview = Coreview.find(params[:coreview_id])
     @cocoreview = Cocoreview.find(params[:cocoreview_id])
  end

  def update
    @cocoreview = Cocoreview.find(params[:cocoreview_id])
    @cocoreview.content = params[:input_comment]
    @cocoreview.save
    
    redirect_to "/review/index_review/#{params[:review_id]}" 
  end
end
