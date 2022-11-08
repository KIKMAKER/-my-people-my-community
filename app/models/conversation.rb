class Conversation < ApplicationRecord
  belongs_to :invitor, class_name: 'User'
  belongs_to :invitee, class_name: 'User'
  has_many :messages
end
