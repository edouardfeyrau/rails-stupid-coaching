class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @myanswer = params[:answer]
    @coachanswer =
      if @myanswer == 'I am going to work'
        p 'Great!'
      elsif @myanswer.include?('?')
        p 'Silly question, get dressed and go to work!'
      else
        p "I don't care, get dressed and go to work!"
      end
  end
end
