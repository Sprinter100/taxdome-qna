class Question < ApplicationRecord
  belongs_to :user
  has_many :answers

  has_many :questions_to_categories
  has_many :categories, through: :questions_to_categories

  has_many :questions_to_tags
  has_many :tags, through: :questions_to_tags

  validates :title, presence: true, length: { maximum: 255 }
  validates :content, presence: true
end
