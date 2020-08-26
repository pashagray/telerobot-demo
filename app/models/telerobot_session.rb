class TelerobotSession < ApplicationRecord
  validates :chat_id, presence: true
end
