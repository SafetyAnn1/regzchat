class Room < ApplicationRecord
  has_many :room_messages, dependent: :destroy,
                         inverse_of: :room
  has_many :users, through: :room_messages

  validates :name, uniqueness: { case_sensitive: false }
end
