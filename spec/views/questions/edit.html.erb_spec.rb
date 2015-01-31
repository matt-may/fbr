require 'rails_helper'

RSpec.describe "questions/edit", :type => :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :prompt => "MyText",
      :quiz_run => nil
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "textarea#question_prompt[name=?]", "question[prompt]"

      assert_select "input#question_quiz_run_id[name=?]", "question[quiz_run_id]"
    end
  end
end
