class Tag < ApplicationRecord
  has_many :questions_to_tags
  has_many :questions, through: :questions_to_tags

  validates :name, presence: true, uniqueness: true, length: { maximum: 20 }
end
