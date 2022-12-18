class Review < ApplicationRecord
  belongs_to :game
  belongs_to :user

  validates :score, inclusion: 0..10
  validates :comment, length: { minimum: 20 }
end
