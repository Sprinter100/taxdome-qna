class QuestionsToCategory < ApplicationRecord
  belongs_to :question
  belongs_to :category
end
