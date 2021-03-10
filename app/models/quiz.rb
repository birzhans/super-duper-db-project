class Quiz < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :questions, dependent: :destroy

  validates :title, :category_id, presence: true
  validates :level, inclusion: 1..10

  def ready?
    self.questions.any? && self.questions.all? { |q| q.answers.any? }
  end
end
