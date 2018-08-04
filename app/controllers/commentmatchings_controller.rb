class CommentmatchingsController < ApplicationController
  def create
    @commentmatching = Commentmatching.new
    @commentmatching.content = params[:input_comment]
    @commentmatching.matching_id = params[:matching_id]
    @commentmatching.save 
    
    redirect_to"/matching/index_matching/#{params[:matching_id]}"
    
  end

  def destroy
    @commentmatching = Commentmatching.find(params[])
    @commentmatching.destroy
    
    redirect_to'/matchings/index_matching/'
    
  end
end
