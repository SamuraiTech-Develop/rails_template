class Profile < ApplicationRecord
  # Validation
  validates :name, presence: true, length: { maximum: 100 }
  validates :gender, length: { maximum: 1 }
  validates :hobby, length: { maximum: 100 }
  validates :introduction, length: { maximum: 255 }
end
