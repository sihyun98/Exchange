class ClubController < ApplicationController
  def home_club
    @clubs= Club.all
  end

  def index_club
     @club = Club.find(params[:club_id])
     
    # binding.pry
     @commentclubs  = @club.commentclubs
  end

  def new_club
  end

  def create_club
    @club = Club.new
    @club.title = params[:club_title]
    @club.content = params[:club_content]
    @club.save

    redirect_to '/club/home_club'
  end

  def edit_club
    @club = Club.find(params[:club_id])
  end

  def update_club
    @club = Club.find(params[:club_id])
    @club.title = params[:club_title]
    @club.content = params[:club_content]
    @club.save

   redirect_to :controller => 'club', :action => 'index_club'
  end

  def destroy_club
    @club = Club.find(params[:club_id])
    @club.destroy

    redirect_to '/club/home_club'
  end
  
  
end
