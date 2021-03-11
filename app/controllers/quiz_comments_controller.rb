class QuizCommentsController < ApplicationController
  before_action :set_quiz, only: [:create]

  def create
    @quiz_comment = @quiz.quiz_comments.new(quiz_comment_params)
    @quiz_comment.user = current_user
    @quiz_comment.save
  end

  private

  def quiz_comment_params
    params.require(:quiz_comment).permit(:body)
  end

  def set_quiz
    @quiz = Quiz.find(params[:quiz_id])
  end
end
