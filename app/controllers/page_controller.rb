class PageController < ApplicationController
  def edit_page
  end

  def create_page
  end

  def home_page
    @reviews= Review.all
    @questions=Question.all
    @infos=Info.all
    @matchings=Matching.all
    @clubs=Club.all
    @count=0
  end

  def save_page
  end
end