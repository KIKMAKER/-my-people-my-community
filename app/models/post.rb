class Post < ApplicationRecord
  belongs_to :project
  belongs_to :user
  validates :contents, presence: true
  validates :contents, length: { in: 1..250 }
end
