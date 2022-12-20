class Review < ApplicationRecord
  belongs_to :game
  belongs_to :user

  validates :score, presence: true, inclusion: { in: 0..10, message: 'needs to be from 0 to 10. ' }, numericality: { only_integer: true }
  validates :comment, length: { minimum: 20 }
  validates :user_id, uniqueness: { scope: :game_id, message: ' has already left a review for this game.' }

end
