class QuizRun < ActiveRecord::Base
  has_and_belongs_to_many :questions
  has_many :results

  # Require a name and description
  validates :name, presence: true
  validates :description, presence: true
end
