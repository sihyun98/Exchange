class InfoController < ApplicationController
  def home_info
    @infos = Info.all
  end
  
  def index_info
    @info = Info.find(params[:info_id])
  end

  def new_info
  end

  def create_info
    @info = Info.new
    @info.title = params[:info_title]
    @info.content = params[:info_content]
    @info.save

    redirect_to '/info/home_info'
  end

  def edit_info
    @info = Info.find(params[:info_id])
  end

  def update_info
     @info = Info.find(params[:info_id])
    @info.title = params[:info_title]
    @info.content = params[:info_content]
    @info.save

     redirect_to :controller => 'info', :action => 'index_info'
  end

  def destroy_info
    @info = Info.find(params[:info_id])
    @info.destroy

    redirect_to '/info/home_info'
  end
end
