class Post < ApplicationRecord
  # Validation
  validates :title, presence: true, length: { maximum: 100 }
  validates :body, presence: true, length: { maximum: 255 }
  
  has_one_attached :image
end
