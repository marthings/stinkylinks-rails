class Like < ApplicationRecord
  belongs_to :link
  belongs_to :user, default: -> { Current.user }
  ## We make sure that one user can only have one like per post
  validates :user_id, uniqueness: {scope: :link_id}
end
