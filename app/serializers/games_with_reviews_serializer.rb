class GamesWithReviewsSerializer < ActiveModel::Serializer
  attributes :id, :title, :platform, :genre, :img_url, :price
  has_many :reviews
end
