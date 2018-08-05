class MatchingController < ApplicationController
  def home_matching
    @q = Matching.ransack(params[:q])
    @matchings = @q.result(distict: true)
  end
  
  def index_matching
   @matching = Matching.find(params[:matching_id])
   @commentmatchings = @matching.commentmatchings
  end

  def new_matching
  end

  def create_matching
    @matching = Matching.new
    @matching.title = params[:matching_title]
    @matching.content = params[:matching_content]
    @matching.save

    redirect_to '/matching/home_matching'
  end

  def edit_matching
    @matching = Matching.find(params[:matching_id])
  end

  def update_matching
    @matching = Matching.find(params[:matching_id])
    @matching.title = params[:matching_title]
    @matching.content = params[:matching_content]
    @matching.save

     redirect_to :controller => 'matching', :action => 'index_matching'
  end

  def destroy_matching
    @matching = Matching.find(params[:matching_id])
    @matching.destroy

    redirect_to '/matching/home_matching'
  end
end
