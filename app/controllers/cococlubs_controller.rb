class CococlubsController < ApplicationController
  
  load_and_authorize_resource
  
  def create
    @cococlub = Cococlub.new
    @cococlub.user_id = current_user.id
    @cococlub.content = params[:input_comment]                    
    @cococlub.cocomentclub_id = params[:cocomentclub_id]
    @cococlub.save
    redirect_to "/club/index_club/#{params[:club_id]}"
  end

   def edit
     @club=Club.find(params[:club_id])
     @cocomentclub = Cocomentclub.find(params[:cocomentclub_id])
     @cococlub = Cococlub.find(params[:cococlub_id])
  end

  def update
    @cococlub = Cococlub.find(params[:cococlub_id])
    @cococlub.content = params[:input_comment]
    @cococlub.save
    
    redirect_to "/club/index_club/#{params[:club_id]}" 
  end

  def destroy
    @cococlub = Cococlub.find(params[:cococlub_id])         
    @cococlub.destroy
    redirect_to "/club/index_club/#{params[:club_id]}"
  end
end
