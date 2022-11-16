class Project < ApplicationRecord
  belongs_to :user
  has_many :project_categories
  has_many :categories, through: :project_categories
  has_many :posts
  has_many :project_members
  has_many :users, through: :project_members
  has_many :project_skills
  has_many :skills, through: :project_skills
  has_many_attached :photos


  validates :title, presence: true
  validates :description, length: { in: 1..1000 }
  validates :location, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  enum status: %i[pending accepted declined]

  include PgSearch::Model
  pg_search_scope :global_search,
    against:[
      :title,
      :description,
      :location
    ],
    associated_against: {
      categories: [:name]
    },
    using: {
      tsearch: { prefix: true }
    }


  def is_owner?(user)
    self.user == user
  end

end
