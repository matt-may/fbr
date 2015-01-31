module ApplicationHelper
  def can_make_quiz?
    #answers =
    @questions.count >= 5# &&
  end
end
