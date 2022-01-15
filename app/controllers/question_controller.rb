class QuestionController < ApplicationController
  def create
    render json: params, status: :ok
  end


  private
  def question_params

  end
end