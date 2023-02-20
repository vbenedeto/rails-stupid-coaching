class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer_from_user = params[:user_answer]
      if @answer_from_user == 'I am going to work'
        @answer_from_coach = 'Great!'
      elsif @answer_from_user.end_with?('?')
        @answer_from_coach = 'Silly question, get dressed and go to work!'
      else
        @answer_from_coach = 'I dont care, get dressed and go to work!'
      end
  end
end
