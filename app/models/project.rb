class Project < ApplicationRecord
  belongs_to :user
  has_many :project_categories
  has_many :categories, through: :project_categories
  has_many :posts
  has_many :project_members
  has_many :users, through: :project_members
  has_many :project_skills
  has_many :skills, through: :project_skills

  validations :title, presence: true
  validations :description, length: { in: 1..1000 }
  validations :location, presence: true
  validations :start_date, presence: true
  validations :end_date, presence: true

end
