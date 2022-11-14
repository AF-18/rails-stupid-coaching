class QuestionsController < ApplicationController

  def ask

  end

  def answer
   # @answer = params[:user_answer]

    if params[:user_answer].downcase == "i am going to work"
      @answer = "great!"
    elsif params[:user_answer].end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    return @answer
  end
end
