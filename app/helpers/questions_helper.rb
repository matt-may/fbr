module QuestionsHelper
  def render_status question
    status = if question.ready?
      "<span class='success'>READY</span>"
    else
      "<span class='warning'>NOT READY</span>"
    end
    status.html_safe
  end
end
