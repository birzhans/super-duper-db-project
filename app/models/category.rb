class Category < ApplicationRecord
  has_many :quizzes, dependent: :nullify

  validates :title, uniqueness: true
end
