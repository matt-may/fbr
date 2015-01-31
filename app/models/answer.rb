class Answer < ActiveRecord::Base
  before_save :set_defaults
  belongs_to :question

  private
  def set_defaults
    self.correct ||= 0
  end
end
