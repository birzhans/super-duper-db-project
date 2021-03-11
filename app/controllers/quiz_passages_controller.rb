class QuizPassagesController < ApplicationController
  before_action :set_quiz_passage, only: [:show, :update, :result]

  def show
  end

  def result
    @quiz_passage.update(passed: @quiz_passage.passed?)
  end

  def update
    @quiz_passage.accept!(params[:answer_ids])
    if @quiz_passage.completed?
      redirect_to result_quiz_passage_path(@quiz_passage)
    else
      render :show
    end
  end

  private

  def set_quiz_passage
    @quiz_passage = QuizPassage.find(params[:id])
  end
end
