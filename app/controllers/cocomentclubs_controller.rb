class CocomentclubsController < ApplicationController
  load_and_authorize_resource
  
  def create
    
    @cocomentclub = Cocomentclub.new
    @cocomentclub.user_id = current_user.id
    @cocomentclub.content = params[:input_comment]                   
    @cocomentclub.club_id = params[:club_id]
    @cocomentclub.save
    
 
    redirect_to "/club/index_club/#{params[:club_id]}"
  end

  def destroy
    @cocomentclub = Cocomentclub.find(params[:cocomentclubs_id])  
    @cocomentclub.destroy       
   
    redirect_to "/club/index_club/#{params[:club_id]}"     
  end
  
  def edit
      @club=Club.find(params[:club_id])
      @cocomentclub = Cocomentclub.find(params[:cocomentclubs_id])
  
    
  end

  def update
    @cocomentclub = Cocomentclub.find(params[:cocomentclubs_id])
    @cocomentclub.content = params[:input_comment]
    @cocomentclub.save
    
    redirect_to "/club/index_club/#{params[:club_id]}"  
  end
 
end
