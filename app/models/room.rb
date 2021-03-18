class Room < ApplicationRecord
  belongs_to :user
  has_many :quizzes


  def self.get_code
    code = Room.first&.code || 'sx17'
    code = Date.current while !Room.find_by(code: code).nil?
    code
  end
end
