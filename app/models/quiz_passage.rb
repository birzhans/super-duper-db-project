class QuizPassage < ApplicationRecord
  belongs_to :quiz
  belongs_to :user
  belongs_to :current_question, class_name: 'Question', optional: true

  before_validation :set_current_question

  def accept!(answer_ids)
    if correct_answer?(answer_ids)
      self.correct_answers += 1
    end
    save!
  end

  def completed?
    current_question.nil?
  end

  def passed?
    correct_answers >= 50
  end

  def score
    correct_answers * 100 / test.questions.count
  end

  private

  def remaining
    if self.current_question.nil?
      quiz.questions.order(:id)
    else
      quiz.questions.order(:id).where('id > ?', current_question.id)
    end
  end

  def set_current_question
    self.current_question = remaining.first
  end

  def correct_answer?(answer_ids)
    get_correct_answers.ids.sort == answer_ids.map(&:to_i).sort
  end

  def get_correct_answers
    self.current_question.answers.correct
  end
end
