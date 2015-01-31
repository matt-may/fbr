require 'rails_helper'

RSpec.describe "results/edit", :type => :view do
  before(:each) do
    @result = assign(:result, Result.create!(
      :question => nil,
      :quiz_run => nil,
      :expected_answer_id => 1,
      :actual_answer_id => 1
    ))
  end

  it "renders the edit result form" do
    render

    assert_select "form[action=?][method=?]", result_path(@result), "post" do

      assert_select "input#result_question_id[name=?]", "result[question_id]"

      assert_select "input#result_quiz_run_id[name=?]", "result[quiz_run_id]"

      assert_select "input#result_expected_answer_id[name=?]", "result[expected_answer_id]"

      assert_select "input#result_actual_answer_id[name=?]", "result[actual_answer_id]"
    end
  end
end
