class Room < ApplicationRecord
  has_many :room_messages, dependent: :destroy,
                         inverse_of: :room
  has_many :users, through: :room_messages
  validates :topic, presence: true, uniqueness: true, case_sensitive: false
end
