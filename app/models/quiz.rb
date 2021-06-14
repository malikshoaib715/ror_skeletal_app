class Quiz < ApplicationRecord
  belongs_to :user
  has_many :questions
  has_many :results
  has_many :users, through: :results
  accepts_nested_attributes_for :questions
end
