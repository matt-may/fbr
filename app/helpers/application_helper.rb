module ApplicationHelper
  def can_make_quiz?
    return false unless Question.all.count >= 5
    count = 0

    @questions.each do |question|
      next unless question.ready?
      count += 1
    end

    if count >= 5
      true
    else
      false
    end
  end
end
