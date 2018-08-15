class CommentsController < ApplicationController
  load_and_authorize_resource
  
  def create
    @comment = Comment.new
    @comment.user_id= current_user.id
    @comment.content = params[:input_comment]                 
    @comment.notice_id = params[:notice_id]
    @comment.save
    
    redirect_to "/notice/index_notice/#{params[:notice_id]}"
  end

  def destroy
    @comment = Comment.find(params[:comments_id])
    @comment.destroy
    
    redirect_to "/notice/index_notice/#{params[:notice_id]}"
  end

  def edit
      @notice=Notice.find(params[:notice_id])
      @comment = Comment.find(params[:comments_id])
  end

  def update
    @comment = Comment.find(params[:comments_id])
    @comment.content = params[:input_comment]
    @comment.save
    
    redirect_to "/notice/index_notice/#{params[:notice_id]}"  
  end
end
