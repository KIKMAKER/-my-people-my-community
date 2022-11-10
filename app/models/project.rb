class Project < ApplicationRecord
  belongs_to :user
  has_many :project_categories
  has_many :categories, through: :project_categories
  has_many :posts
  has_many :project_members
  has_many :users, through: :project_members
  has_many :project_skills
  has_many :skills, through: :project_skills
  has_one_attached :photo
  validates :title, presence: true
  validates :description, length: { in: 1..1000 }
  validates :location, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  enum status: [:pending, :accepted, :declined]
end
