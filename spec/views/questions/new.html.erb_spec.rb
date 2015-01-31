require 'rails_helper'

RSpec.describe "questions/new", :type => :view do
  before(:each) do
    assign(:question, Question.new(
      :prompt => "MyText",
      :quiz_run => nil
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "textarea#question_prompt[name=?]", "question[prompt]"

      assert_select "input#question_quiz_run_id[name=?]", "question[quiz_run_id]"
    end
  end
end
