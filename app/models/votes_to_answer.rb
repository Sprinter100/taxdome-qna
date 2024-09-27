class VotesToAnswer < ApplicationRecord
  belongs_to :vote
  belongs_to :answer
end
