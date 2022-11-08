class User < ApplicationRecord
  has_many :invitor_conversations, class_name: 'Conversation', foreign_key: 'invitor_id'
  has_many :invitee_conversations, class_name: 'Conversation', foreign_key: 'invitee_id'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
