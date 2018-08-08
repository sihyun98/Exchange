class CocomentclubsController < ApplicationController
  
  def create
    @cocomentclub = Cocomentclub.new                        #새로운 코멘트 생성
    @cocomentclub.content = params[:input_comment_1]                    #params는 일단 비워둔다.
    @cocomentclub.commentclub_id = params[:commentclub_id]
    @commentclub.save
    
    redirect_to "/club/index_club/#{params[:club_id]}"
  end
  
  def destroy
    @comment = Comment.find(params[])         #삭제할 코멘트 찾기
    @comment.destroy
    
    redirect_to '/posts/show/'
  end

  def edit
  end

  def update
  end
end
