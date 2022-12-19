class Game < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews

    GENRES = ['RPG', 'Racing', 'Action-adventure', 'Shooters', 'Sports', 'Sandbox', 'Puzzlers', 'MOBA']
    PLATFORMS = ['Switch', 'Playstation', 'Xbox', 'PC']

    validates :title, presence: true
    validates :genre, presence: true, inclusion: { in: GENRES, message: " needs to be one of these: #{GENRES} " } 
    validates :platform, presence: true, inclusion: { in: PLATFORMS, message: " needs to be one of these: #{PLATFORMS} "}
    validates :img_url, presence: true
    validates :price, presence: true, numericality: { greater_than: 0 }
end
