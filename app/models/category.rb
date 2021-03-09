class Category < ApplicationRecord
  has_many :quizzes

  validates :title, uniqueness: true
end
