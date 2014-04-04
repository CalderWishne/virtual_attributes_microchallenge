class QuestionsController < ApplicationController

  def new
    @question = Question.new
  end

  def create
    @question = Question.create!(question_params)
    redirect_to question_path(@question)
  end



  private
    def question_params
      params.require(:question).permit(:title, :content, :tag_list)
    end

end






