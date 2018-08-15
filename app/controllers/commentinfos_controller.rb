class CommentinfosController < ApplicationController
   load_and_authorize_resource
   
  def create
    
    @commentinfo = Commentinfo.new
    @commentinfo.user_id = current_user.id
    @commentinfo.content = params[:input_comment]                    
    @commentinfo.info_id = params[:info_id]
    @commentinfo.save
    redirect_to "/info/index_info/#{params[:info_id]}"
  end

  def destroy
    @commentinfo = Commentinfo.find(params[:commentinfos_id])         
    @commentinfo.destroy
    redirect_to "/info/index_info/#{params[:info_id]}"
  end
  
  def edit
      @info=Info.find(params[:info_id])
      @commentinfo = Commentinfo.find(params[:commentinfos_id])
  end

  def update
    @commentinfo = Commentinfo.find(params[:commentinfos_id])
    @commentinfo.content = params[:input_comment]
    @commentinfo.save
    
    redirect_to "/info/index_info/#{params[:info_id]}"  
  end
end
