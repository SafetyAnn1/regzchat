class User < ApplicationRecord
  has_many :room_messages
  has_many :rooms, through: :room_messages
  validates :username, uniqueness: true, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def gravatar_url
    gravatar_id = Digest::MD5::hexdigest(email).downcase
    "https://gravatar.com/avatar/#{gravatar_id}.png"
  end
end
