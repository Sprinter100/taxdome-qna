class Tag < ApplicationRecord
  has_many :questions_to_tags
  has_many :questions, through: :questions_to_tags
end
