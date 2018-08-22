class CoconoticesController < ApplicationController
  
  load_and_authorize_resource
  def create
    
    @coconotice = Coconotice.new
    @coconotice.user_id = current_user.id
    @coconotice.content = params[:input_comment]                    
    @coconotice.comment_id = params[:comment_id]
    @coconotice.save
    redirect_to "/notice/index_notice/#{params[:notice_id]}"
    
  end

  def destroy
    @coconotice = Coconotice.find(params[:coconotice_id])         
    @coconotice.destroy
    redirect_to "/notice/index_notice/#{params[:notice_id]}"
  end

  def edit
     @notice=Info.find(params[:notice_id])
     @comment = Comment.find(params[:comment_id])
     @coconotice = Coconotice.find(params[:coconotice_id])
  end

  def update
    @coconotice = Coconotice.find(params[:coconotice_id])
    @coconotice.content = params[:input_comment]
    @coconotice.save
    
    redirect_to "/notice/index_notice/#{params[:notice_id]}" 
  end
end
