class Vote < ApplicationRecord
  belongs_to :user

  has_many :votes_to_answers
  has_many :answers, through: :votes_to_answers

  validates :value, presence: true, inclusion: { in: [1, -1] }
end
