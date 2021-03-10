class QuestionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_question, only: %i[show destroy edit update]
  before_action :set_quiz, only: %i[create new]

  def show
    @quiz = @question.quiz
  end

  def new
    @question = @quiz.questions.new
  end

  def create
    @question = @quiz.questions.new(question_params)

    if @question.save
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @question.update(question_params)
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  def destroy
    quiz = @question.quiz
    @question.destroy
    redirect_to quiz
  end

  private

  def set_quiz
    @quiz = Quiz.find(params[:quiz_id])
  end

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:title)
  end
end