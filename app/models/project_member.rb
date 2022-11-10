class ProjectMember < ApplicationRecord
  belongs_to :user
  belongs_to :project

  enum status: [:pending, :accepted, :declined]
end
