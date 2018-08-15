class MatchingController < ApplicationController
 load_and_authorize_resource
  before_action :set_matching, only: [:index_matching, :edit_matching, :update_matching, :destroy_matching]
  before_action :authenticate_user!, except: [:home_matching]
 
  
  def home_matching
    @q = Matching.ransack(params[:q])
    @matchings = @q.result(distict: true)
    @matchings= Matching.all
  end

  def index_matching
    @commentmatchings = @matching.commentmatchings
  end


  def new_matching
     @matching = Matching.new
  end

  def create_matching
     
    @matching = Matching.new(matching_params)
    @matching.user_id = current_user.id
   
    if @matching.save
    else
    end
     
     redirect_to '/matching/home_matching'
  end

  def edit_matching

  end

  def update_matching
    @matching.update(matching_params)
    if @matching.save
    else
    end
    
     redirect_to :controller => 'matching', :action => 'index_matching'
  end

  def destroy_matching
    @matching.destroy

    redirect_to '/matching/home_matching'
  end
  
  
  private
  
  def matching_params
    params.require(:matching).permit(:title, :content, :user_id)
  end
  
  def set_matching
      @matching = Matching.find(params[:matching_id])
  end
end
