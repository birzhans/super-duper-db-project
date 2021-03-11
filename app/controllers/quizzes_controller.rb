class QuizzesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_quiz, only: [:show, :edit, :update, :destroy, :start]

  def index
    @quizzes = Quiz.all
  end

  def show
  end

  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.new(quiz_params)
    @quiz.user = current_user

    if @quiz.save
      redirect_to quizzes_path, notice: "Quiz: #{@quiz.title} was successfully created!"
    else
      render :new, alert: "An error occured while saving a quiz."
    end
  end

  def edit
  end

  def update
    if @quiz.update(quiz_params)
      redirect_to @quiz, notice: "Quiz: #{@quiz.title} was successfully updated!"
    else
      redirect_to :edit, alert: "An error occurred while editing a quiz."
    end
  end

  def destroy
    @quiz.destroy
    redirect_to quizzes_path, notice: "Quiz was successfully deleted."
  end

  def start
    redirect_to QuizPassage.create(user_id: current_user.id, quiz_id: @quiz.id)
  end

  private

  def set_quiz
    @quiz = Quiz.find(params[:id])
  end

  def quiz_params
    params.require(:quiz).permit(:title, :category_id, :level)
  end
end
