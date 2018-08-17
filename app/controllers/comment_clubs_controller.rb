class CommentClubsController < ApplicationController
  
  load_and_authorize_resource
  
  def create
    
    @commentclub = Commentclub.new
    @commentclub.user_id = current.user_id
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
  
  def edit
      @club=Club.find(params[:club_id])
      @commentclub = Commentclub.find(params[:commentclubs_id])
  
    
  end

  def update
    @commentclub = Commentclub.find(params[:commentclubs_id])
    @commentclub.content = params[:input_comment]
    @commentclub.save
    
    redirect_to "/club/index_club/#{params[:club_id]}"  
  end
  
end
  