class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :links

  validates :nick_name, uniqueness: true, presence: true

  def likes?(link)
    link.likes.where(user_id: id).any?
  end

  def avatar_default
    shortname = self.nick_name[0..1]
    "#{shortname}"
  end

end
