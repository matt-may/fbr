class Result < ActiveRecord::Base
  belongs_to :question
  belongs_to :test
  belongs_to :expected_answer, class_name: 'Answer', foreign_key: 'expected_answer_id'
  belongs_to :actual_answer, class_name: 'Answer', foreign_key: 'actual_answer_id'

  validates :actual_answer_id, presence: true
end
