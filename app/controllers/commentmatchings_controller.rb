class CommentmatchingsController < ApplicationController
  def create
    @commentmatching = Commentmatching.new
    @commentmatching.content = params[:input_comment]
    @commentmatching.matching_id = params[:matching_id]
    @commentmatching.save 
    
    redirect_to"/matching/index_matching/#{params[:matching_id]}"
    
  end

  def destroy
    @commentmatching = Commentmatching.find(params[:commentmatchings_id])
    @commentmatching.destroy
    
    redirect_to"/matching/index_matching/#{params[:matching_id]}"
    
  end
end
