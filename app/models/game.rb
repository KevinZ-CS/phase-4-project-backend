class Game < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews

    GENRES = ['RPG', 'Racing', 'Action-adventure', 'Shooters', 'Sports', 'Sandbox', 'Puzzlers', 'MOBA']
    PLATFORMS = ['Switch', 'Playstation', 'Xbox', 'PC']

    validates :title, presence: true
    validates :genre, presence: true, inclusion: { in: GENRES, message: " needs to be one of: #{GENRES.join(', ')} " } 
    validates :platform, presence: true, inclusion: { in: PLATFORMS, message: " needs to be one of: #{PLATFORMS.join(', ')} "}
    validates :img_url, presence: true, format: {with: /\.(png|jpg)\Z/i}
    validates :price, presence: true, numericality: { greater_than: 0 }
end
