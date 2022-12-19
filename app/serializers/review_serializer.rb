class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :score, :comment, :username, :game_id, :user_id
  # belongs_to :user

  def username
    self.object.user.username
  end

end
