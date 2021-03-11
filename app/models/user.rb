class User < ApplicationRecord
  has_many :quizzes, dependent: :nullify

  has_many :quiz_passages
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
