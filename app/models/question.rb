class Question < ActiveRecord::Base
  has_many :answers
  has_and_belongs_to_many :quiz_runs

  def ready?
     self.enough_answers? && self.has_correct_answer?
  end

  # A question must have 3 or more answers to be ready for a quiz
  def enough_answers?
    self.answers.count >= 3
  end

  # Check if any of the answers have correct == true
  def has_correct_answer?
    self.answers.any? { |answer| answer.correct }
  end

  # Retrieve the correct answer
  def correct_answer
    self.answers.where(correct: true).first
  end
end
