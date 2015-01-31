class Question < ActiveRecord::Base
  has_many :answers
  has_and_belongs_to_many :quiz_runs
end
