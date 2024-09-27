class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  has_many :votes_to_answers
  has_many :votes, through: :votes_to_answers

  validates :content, presence: true
end
