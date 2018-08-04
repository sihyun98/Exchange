class CommentClubsController < ApplicationController
  def create
    
    @commentclub = Commentclub.new
    @commentclub.content = params[:input_comment]                   
    @commentclub.club_id = params[:club_id]
    @commentclub.save
    
 
    redirect_to "/club/index_club/#{params[:club_id]}"
  end

  def destroy
    @commentclub = Commentclub.find(params[:commentclubs_id])  
    @commentclub.destroy         
   
    redirect_to "/club/index_club/#{params[:club_id]}"     
  end
end
