class CocoinfosController < ApplicationController
  def create
    
    @cocoinfo = Cocoinfo.new
    @cocoinfo.content = params[:input_comment]                    
    @cocoinfo.commentinfo_id = params[:commentinfo_id]
    @cocoinfo.save
    redirect_to "/info/index_info/#{params[:info_id]}"
    
  end

  def destroy
    @cocoinfo = Cocoinfo.find(params[:cocoinfo_id])         
    @cocoinfo.destroy
    redirect_to "/info/index_info/#{params[:info_id]}"
  end

  def edit
     @info=Info.find(params[:info_id])
     @commentinfo = Commentinfo.find(params[:commentinfo_id])
     @cocoinfo = Cocoinfo.find(params[:cocoinfo_id])
  end

  def update
    @cocoinfo = Cocoinfo.find(params[:cocoinfo_id])
    @cocoinfo.content = params[:input_comment]
    @cocoinfo.save
    
    redirect_to "/info/index_info/#{params[:info_id]}" 
  end
end
