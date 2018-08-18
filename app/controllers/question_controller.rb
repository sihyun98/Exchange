class QuestionController < ApplicationController
  
  load_and_authorize_resource
  before_action :set_question, only: [:index_question, :edit_question, :update_question, :destroy_question]
  before_action :authenticate_user!, except: [:home_question]
 
  
  def home_question
    @q = Question.ransack(params[:q])
    @questions = @q.result(distict: true)
    @questions= Question.all
  end

  def index_question
    @commentquestions = @question.commentquestions
  end


  def new_question
     @question = Question.new
  end

  def create_question
     
    @question = Question.new(question_params)
    @question.user_id= current_user.id
   
    if @question.save
    else
    end
     
     redirect_to '/question/home_question'
  end

  def edit_question

  end

  def update_question
    @question.update(question_params)
    if @question.save
    else
    end
    
     redirect_to :controller => 'question', :action => 'index_question'
  end

  def destroy_question
    @question.destroy

    redirect_to '/question/home_question'
  end
  
  
  private
  
  def question_params
    params.require(:question).permit(:title, :content, :user_id, :image)
  end
  
  def set_question
    @question = Question.find(params[:question_id])
  end
  
  def form_for
    @question=Question.new
  end
  
end
