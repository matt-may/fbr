class Test < ActiveRecord::Base
  belongs_to :quiz_run
  has_many :results
end
