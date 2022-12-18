class Review < ApplicationRecord
  belongs_to :game
  belongs_to :user

  validates :score, presence: true, inclusion: { in: 0..10, message: 'needs to be from 0 to 10 ' }
  validates :comment, length: { minimum: 20 }
end
