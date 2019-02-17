class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :nick_name, :email
  has_many :links
end
