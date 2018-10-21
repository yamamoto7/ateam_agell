class ChatRoom < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users

  has_many :chat_messages
end
