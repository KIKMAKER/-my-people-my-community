class Project < ApplicationRecord
  belongs_to :user
  has_many :categories, through: :project_categories
  has_many :project_categories
  has_many :posts
  has_many :users, through: :project_members
  has_many :skills, through: :project_skills
  has_many :project_skills
end
