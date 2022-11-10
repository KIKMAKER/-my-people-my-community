class Category < ApplicationRecord
  has_many :projects, through: :project_categories

  validates :name, uniqueness: true
end
