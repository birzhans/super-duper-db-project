class Quiz < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :questions, dependent: :destroy

  validates :title, presence: true
  validates :level, inclusion: 1..10
end
