require 'rails_helper'

RSpec.describe "results/new", :type => :view do
  before(:each) do
    assign(:result, Result.new(
      :question => nil,
      :quiz_run => nil,
      :expected_answer_id => 1,
      :actual_answer_id => 1
    ))
  end

  it "renders new result form" do
    render

    assert_select "form[action=?][method=?]", results_path, "post" do

      assert_select "input#result_question_id[name=?]", "result[question_id]"

      assert_select "input#result_quiz_run_id[name=?]", "result[quiz_run_id]"

      assert_select "input#result_expected_answer_id[name=?]", "result[expected_answer_id]"

      assert_select "input#result_actual_answer_id[name=?]", "result[actual_answer_id]"
    end
  end
end
