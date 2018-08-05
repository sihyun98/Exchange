class QuestionController < ApplicationController
  
  def home_question
    @q = Question.ransack(params[:q])
    @questions = @q.result(distict: true)
  end

  def index_question
     @question = Question.find(params[:question_id])
  end


  def new_question
  end

  def create_question
    @question =Question.new
    @question.title = params[:question_title]
    @question.content = params[:question_content]
    @question.save
    
    redirect_to '/question/home_question'
  end

  def edit_question
    @question = Question.find(params[:question_id])
  end

  def update_question
    @question = Question.find(params[:question_id])
    @question.title = params[:question_title]
    @question.content = params[:question_content]
    @question.save

     redirect_to :controller => 'question', :action => 'index_question'
  end

  def destroy_question
    @question = Question.find(params[:question_id])
    @question.destroy
    
     redirect_to '/question/home_question'
  end
end
