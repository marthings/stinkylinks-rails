class Link < ApplicationRecord

  belongs_to :user, default: -> { Current.user }
  has_many :likes, dependent: :destroy

  validates :title, presence: true
  validates :url, url: true

  def total_likes
    likes.size
  end

end
