class CocoquestionsController < ApplicationController
  def create
    
    @cocoquestion = Cocoquestion.new
    @cocoquestion.content = params[:input_comment]                    
    @cocoquestion.commentquestion_id = params[:commentquestion_id]
    @cocoquestion.save
    redirect_to "/question/index_question/#{params[:question_id]}"
    
  end

  def destroy
    @cocoquestion = Cocoquestion.find(params[:cocoquestion_id])         
    @cocoquestion.destroy
    redirect_to "/question/index_question/#{params[:question_id]}"
  end

  def edit
     @question=Info.find(params[:question_id])
     @commentquestion = Commentquestion.find(params[:commentquestion_id])
     @cocoquestion = Cocoquestion.find(params[:cocoquestion_id])
  end

  def update
    @cocoquestion = Cocoquestion.find(params[:cocoquestion_id])
    @cocoquestion.content = params[:input_comment]
    @cocoquestion.save
    
    redirect_to "/question/index_question/#{params[:question_id]}" 
  end
end
