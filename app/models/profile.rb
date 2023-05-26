class Profile < ApplicationRecord
  # Validation
  validates :name, presence: true, length: { maximum: 50 }
  validates :gender, length: { maximum: 3 }
  validates :hobby, length: { maximum: 100 }
  validates :introduction, length: { maximum: 200 }
end
