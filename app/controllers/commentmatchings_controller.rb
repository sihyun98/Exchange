class CommentmatchingsController < ApplicationController
  load_and_authorize_resource
  
  
  def create
    @commentmatching = Commentmatching.new
    @commentmatching.user_id = current_user.id
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
  
   def edit
      @matching=Matching.find(params[:matching_id])
      @commentmatching = Commentmatching.find(params[:commentmatchings_id])

  end

  def update
    @commentmatching = Commentmatching.find(params[:commentmatchings_id])
    @commentmatching.content = params[:input_comment]
    @commentmatching.save
    redirect_to "/matching/index_matching/#{params[:matching_id]}"  
  end
  
end
