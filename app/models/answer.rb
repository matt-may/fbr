class Answer < ActiveRecord::Base
  before_save :set_defaults
  belongs_to :question
  validate :question_only_has_one_correct_answer
  validates :description, presence: true, allow_blank: false

  def question_only_has_one_correct_answer
    return unless self.question

    answers = self.question.answers
    other_answers = answers - [self]
    if self.correct && other_answers.any? { |answer| answer.correct }
      errors.add(:correct, "already taken by another answer. Only one correct answer per question")
    end
  end

  private
  def set_defaults
    self.correct ||= 0
  end
end
