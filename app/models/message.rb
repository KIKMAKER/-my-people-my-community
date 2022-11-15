class Message < ApplicationRecord
  belongs_to :user
  belongs_to :conversation

  def sender?(a_user)
    user.id == a_user.id
  end

  validates :content, presence: true
end
