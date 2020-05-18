class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:answer]
    @answer = coach_answer(@question)
  end
  
  def coach_answer(question)
    if question.downcase == "I am going to work!"
      return "Great!"
    elsif question.end_with?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
