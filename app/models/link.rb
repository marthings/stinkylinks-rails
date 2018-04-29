class Link < ApplicationRecord
  belongs_to :user, default: -> { Current.user }
  has_many :likes

  validates :title, presence: true
  validates :url, url: true
end
