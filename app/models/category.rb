class Category < ApplicationRecord
  has_many :questions_to_categories
  has_many :questions, through: :questions_to_categories
end
