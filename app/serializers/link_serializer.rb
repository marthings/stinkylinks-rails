class LinkSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower
  attributes :title, :url, :total_likes
  belongs_to :user

  link :self, :url
end
