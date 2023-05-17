class Post < ApplicationRecord
  # Validation
  validates :title, presence: true
  validates :body, presence: true
end
