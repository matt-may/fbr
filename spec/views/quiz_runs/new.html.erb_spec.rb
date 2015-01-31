require 'rails_helper'

RSpec.describe "quiz_runs/new", :type => :view do
  before(:each) do
    assign(:quiz_run, QuizRun.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new quiz_run form" do
    render

    assert_select "form[action=?][method=?]", quiz_runs_path, "post" do

      assert_select "input#quiz_run_name[name=?]", "quiz_run[name]"

      assert_select "textarea#quiz_run_description[name=?]", "quiz_run[description]"
    end
  end
end
