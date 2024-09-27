class User < ApplicationRecord
  has_many :questions
  has_many :answers
  has_many :votes

  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { minimum: 6 }
  validates :reputation, numericality: { only_integer: true }
end
