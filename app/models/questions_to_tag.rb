class QuestionsToTag < ApplicationRecord
  belongs_to :question
  belongs_to :tag
end
