class CommentquestionsController < ApplicationController
    
    def create
    @commentquestion = Commentquestion.new
    @commentquestion.user_id = current_user.id
    @commentquestion.content = params[:input_comment]
    @commentquestion.question_id = params[:question_id]
    @commentquestion.save 
    
    redirect_to"/question/index_question/#{params[:question_id]}"
    
    end

    def destroy
    @commentquestion = Commentquestion.find(params[:commentquestions_id])
    @commentquestion.destroy
    
    redirect_to"/question/index_question/#{params[:question_id]}"
    end
  
    def edit
      @question=Question.find(params[:question_id])
      @commentquestion = Commentquestion.find(params[:commentquestions_id])

    end

    def update
    @commentquestion = Commentquestion.find(params[:commentquestions_id])
    @commentquestion.content = params[:input_comment]
    @commentquestion.save
    redirect_to "/question/index_question/#{params[:question_id]}"  
    end
end
