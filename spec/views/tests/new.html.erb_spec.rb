require 'rails_helper'

RSpec.describe "tests/new", :type => :view do
  before(:each) do
    @quiz_run = QuizRun.create! name: "Run", description: "Description"
    assign(:test, Test.new(:quiz_run => @quiz_run))
  end

  it "renders new test form" do
    render

    assert_select "form[action=?][method=?]", tests_path, "post" do

      assert_select "input#test_quiz_run_id[name=?]", "test[quiz_run_id]"
    end
  end
end
