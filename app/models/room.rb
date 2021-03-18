class Room < ApplicationRecord
  belongs_to :user


  def self.get_code
    # code = Room.first.code || 'sx17'
    # code = some_random_hash while !Room.find_by(code: code).nil?
    # code
  end
end
