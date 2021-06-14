class ChoosenAnswer < ApplicationRecord
  belongs_to :result
  belongs_to :question
  belongs_to :answer
end
