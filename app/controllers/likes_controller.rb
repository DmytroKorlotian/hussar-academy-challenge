class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_answer

	def create
    @like = Like.new
    @like.user = current_user
    @like.answer = @answer

    if @like.save
      redirect_to question_path(@answer.question), notice: "Like was successfully created."
    else
      redirect_to question_path(@answer.question), alert: "There was an error when adding like."
    end
	end

  private

  def set_answer
    @answer = Answer.find(params[:answer_id])
  end
end
