class Answer < ActiveRecord::Base
  before_save :set_defaults
  belongs_to :question
  validate :question_only_has_one_correct_answer
  validate :question_only_has_unique_descriptions
  validates :description, presence: true, allow_blank: false

  def question_only_has_one_correct_answer
    return unless self.question

    if self.correct && other_answers.any? { |answer| answer.correct }
      errors.add(:correct, "already taken by another answer. Only one correct answer per question")
    end
  end

  def question_only_has_unique_descriptions
    return unless self.question

    if self.description && other_answers.any? { |answer| answer.description == self.description }
      errors.add(:description, "already taken by another answer. Please add a unique description.")
    end
  end

  def other_answers
    answers = self.question.answers
    other_answers = answers - [self]
    other_answers
  end

  private
  def set_defaults
    self.correct ||= 0
  end
end