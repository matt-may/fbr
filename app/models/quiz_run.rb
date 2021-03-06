class QuizRun < ActiveRecord::Base
  has_and_belongs_to_many :questions
  has_many :tests
  has_many :results, through: :tests

  # Require a name and description
  validates :name, presence: true
  validates :description, presence: true

  # A quiz run has enough questions if it has 5 or more questions
  def enough_questions?
    self.questions.count >= 5
  end

  alias_method :ready?, :enough_questions?
end