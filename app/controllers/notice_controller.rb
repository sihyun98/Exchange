class NoticeController < ApplicationController
  load_and_authorize_resource
  before_action :set_notice, only: [:index_notice, :edit_notice, :update_notice, :destroy_notice]
  before_action :authenticate_user!, except: [:home_notice]
 
  
  def home_notice
    @q = Notice.ransack(params[:q])
    @notices = @q.result(distict: true)
    @notices= Notice.all
  end

  def index_notice
    @comments = @notice.comments
  end


  def new_notice
     @notice = Notice.new
  end

  def create_notice
     
    @notice = Notice.new(notice_params)
    @notice.user_id= current_user.id
   
    if @notice.save
    else
    end
     
     redirect_to '/notice/home_notice'
  end

  def edit_notice

  end

  def update_notice
    @notice.update(notice_params)
    if @notice.save
    else
    end
    
     redirect_to :controller => 'notice', :action => 'index_notice'
  end

  def destroy_notice
    @notice.destroy

    redirect_to '/notice/home_notice'
  end
  
  
  private
  
  def notice_params
    params.require(:notice).permit(:title, :content, :user_id)
  end
  
  def set_notice
      @notice = Notice.find(params[:notice_id])
  end
end
