class Question < ActiveRecord::Base
  has_many :answers
  has_and_belongs_to_many :quiz_runs

  def ready?
     self.enough_answers? && self.has_correct_answer?
  end

  def enough_answers?
    self.answers.count >= 3
  end

  def has_correct_answer?
    self.answers.any? { |answer| answer.correct }
  end
end
