class CocomatchingsController < ApplicationController
  def create
    
    @cocomatching = Cocomatching.new
    @cocomatching.content = params[:input_comment]                    
    @cocomatching.commentmatching_id = params[:commentmatching_id]
    @cocomatching.save
    redirect_to "/matching/index_matching/#{params[:matching_id]}"
    
  end

  def destroy
    @cocomatching = Cocomatching.find(params[:cocomatching_id])         
    @cocomatching.destroy
    redirect_to "/matching/index_matching/#{params[:matching_id]}"
  end

  def edit
     @matching=Matching.find(params[:matching_id])
     @commentmatching = Commentmatching.find(params[:commentmatching_id])
     @cocomatching = Cocomatching.find(params[:cocomatching_id])
  end

  def update
    @cocomatching = Cocomatching.find(params[:cocomatching_id])
    @cocomatching.content = params[:input_comment]
    @cocomatching.save
    
    redirect_to "/matching/index_matching/#{params[:matching_id]}" 
  end
end
