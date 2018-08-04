class CommentInfosController < ApplicationController
    @comment_info=Comment_info.new
    @comment_info.content=params[]
    @comment_info.post_id=params[]
    @comment_info.save_page
    

end
