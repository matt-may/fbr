module AnswersHelper
  def display_answer_container?
    'display:none' unless !@answers.empty?
  end
end
