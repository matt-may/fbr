module ApplicationHelper
  def question_quota_met?
    @questions.count >= 5
  end
end
