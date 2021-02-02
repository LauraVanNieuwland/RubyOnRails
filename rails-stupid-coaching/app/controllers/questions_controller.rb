class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    if @question.include?("?")
      @answer1 = "Silly question, get dressed and go to work!"
    elsif @question == "I am going to work"
      @answer2 = "Great!"
    else
      @answer3 = "I don't care, get dressed and go to work!"
    end
  end
end
