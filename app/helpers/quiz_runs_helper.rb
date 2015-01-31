module QuizRunsHelper
  def render_status model
    status_message(model.ready?)
  end

  def status_message ready
    status = if ready
               "<span class='success'>READY</span>"
             else
               "<span class='warning'>NOT READY</span>"
             end
    status.html_safe
  end
end