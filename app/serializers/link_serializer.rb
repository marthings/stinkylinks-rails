class LinkSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :url
  belongs_to :user
end
