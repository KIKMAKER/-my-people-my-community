class User < ApplicationRecord
  has_many :invitor_conversations, class_name: 'Conversation', foreign_key: 'invitor_id'
  has_many :invitee_conversations, class_name: 'Conversation', foreign_key: 'invitee_id'
  has_many :messages
  has_many :project_members
  has_many :projects, through: :project_members
  has_many :initiated_projects, class_name: 'Project'

  has_many :posts
  has_many :user_skills
  has_many :skills, through: :user_skills
  has_one_attached :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, uniqueness: { message: 'User name already taken!' }
  validates :bio, length: { in: 1..10000 }
  validates :location, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  def to_param
    username
  end

  def self.find_by_param(input)
    find_by_username(input)
  end

  def full_name(user)
    "#{user.first_name} #{user.last_name}"
  end

  include PgSearch::Model
    pg_search_scope :global_search,
      against: [ :first_name, :location ],
      associated_against: {
        skills: [:name]
      },
    using: {
      tsearch: { prefix: true }
    }
end
