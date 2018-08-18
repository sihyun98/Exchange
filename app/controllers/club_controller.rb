class ClubController < ApplicationController
  load_and_authorize_resource
  before_action :set_club, only: [:index_club, :edit_club, :update_club, :destroy_club]
  before_action :authenticate_user!, except: [:home_club]
 
  
  def home_club
    @q = Club.ransack(params[:q])
    @clubs = @q.result(distict: true)
    @clubs= Club.all
  end

  def index_club
    @commentclubs = @club.commentclubs
  end


  def new_club
     @club = Club.new
  end

  def create_club
     
    @club = Club.new(club_params)
    @club.user_id= current_user.id
   
    if @club.save
    else
    end
     
     redirect_to '/club/home_club'
  end

  def edit_club

  end

  def update_club
    @club.update(club_params)
    if @club.save
    else
    end
    
     redirect_to :controller => 'club', :action => 'index_club'
  end

  def destroy_club
    @club.destroy

    redirect_to '/club/home_club'
  end
  
  
  private
  
  def club_params
    params.require(:club).permit(:title, :content, :user_id, :image)
  end
  
  def set_club
      @club = Club.find(params[:club_id])
  end
  
  def form_for
    @club=Club.new
  end
  
end
