class ProjectMember < ApplicationRecord
  belongs_to :user
  belongs_to :project

  enum status: %i[pending accepted declined]
end
