class NoticeController < ApplicationController
  def home_notice
    @notices=Notice.all
  end
  
  def index_notice
     @notice = Notice.find(params[:notice_id])
  end

  def new_notice
  end

  def create_notice
    @notice = Notice.new
    @notice.title = params[:notice_title]
    @notice.content = params[:notice_content]
    @notice.save

    redirect_to '/notice/home_notice'
  end

  def edit_notice
    @notice = Notice.find(params[:notice_id])
  end

  def update_notice
    @notice = Notice.find(params[:notice_id])
    @notice.title = params[:notice_title]
    @notice.content = params[:notice_content]
    @notice.save

    redirect_to :controller => 'notice', :action => 'index_notice'
  end

  def destroy_notice
    @notice = Notice.find(params[:notice_id])
    @notice.destroy

    redirect_to '/notice/home_notice'
  end
end
