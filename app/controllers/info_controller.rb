class InfoController < ApplicationController
  load_and_authorize_resource
  before_action :set_info, only: [:index_info, :edit_info, :update_info, :destroy_info]
  before_action :authenticate_user!, except: [:home_info]
 
  
  def home_info
    @q = Info.ransack(params[:q])
    @infos = @q.result(distict: true)
    @infos= Info.all
  end

  def index_info
    @commentinfos = @info.commentinfos
  end


  def new_info
     @info = Info.new
  end

  def create_info
     
    @info = Info.new(info_params)
    @info.user_id= current_user.id
   
    if @info.save
    else
    end
     
     redirect_to '/info/home_info'
  end

  def edit_info

  end

  def update_info
    @info.update(info_params)
    if @info.save
    else
    end
    
     redirect_to :controller => 'info', :action => 'index_info'
  end

  def destroy_info
    @info.destroy

    redirect_to '/info/home_info'
  end
  
  
  private
  
  def info_params
    params.require(:info).permit(:title, :content, :user_id, :image)
  end
  
  def set_info
    @info = Info.find(params[:info_id])
  end
  
  def form_for
    @info =Info.new
  end
end
