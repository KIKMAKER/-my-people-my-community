 class User < ApplicationRecord
  has_many :conversations
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

  # validates :username, uniqueness: { message: 'User name already taken!' }
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

  def full_name
    "#{first_name} #{last_name}"
  end

  def accepted_member_of_project?(project)
    project_members.find_by(project: project).accepted?
  end

  def member_of_project?(project)
    projects.include?(project)
  end

  def can_apply_to_project?(project)
    !member_or_owner_of_project?(project)
  end

  def member_or_owner_of_project?(project)
    member_of_project?(project) || project.is_owner?(self)
  end

  def supporter?
    projects.count > 1
  end

  def all_rounder?
    skills_on_projects = projects.map { |project| project.skills }.flatten
    skills_on_projects.count { |skill| skills.include?(skill) } > 1
  end

  def expert?
    project_skill_names = projects.map { |project| project.skills.map(&:name) }.flatten
    skills.map(&:name).any? { |skill| project_skill_names.count(skill) > 1 }
  end

  def expert_in
    project_skill_names = projects.map { |project| project.skills.map(&:name) }.flatten
    skills.map(&:name).find { |skill| project_skill_names.count(skill) > 1 }
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
