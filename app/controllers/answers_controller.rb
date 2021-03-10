class AnswersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_answer, only: %i[show destroy edit update]
  before_action :set_question, only: %i[create new]

  def show
    @question = @answer.question
  end

  def new
    @answer = @question.answers.new
  end

  def create
    @answer = @question.answers.new(answer_params)

    if @answer.save
      redirect_to answer_path(@answer)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @answer.update(answer_params)
      redirect_to answer_path(@answer)
    else
      render :new
    end
  end

  def destroy
    question = @answer.question
    @answer.destroy
    redirect_to question
  end

  private

  def set_question
    @question = Question.find(params[:question_id])
  end

  def set_answer
    @answer = Answer.find(params[:id])
  end

  def answer_params
    params.require(:answer).permit(:body, :correct)
  end
end