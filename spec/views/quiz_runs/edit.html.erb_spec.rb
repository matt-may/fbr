require 'rails_helper'

RSpec.describe "quiz_runs/edit", :type => :view do
  before(:each) do
    @quiz_run = assign(:quiz_run, QuizRun.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit quiz_run form" do
    render

    assert_select "form[action=?][method=?]", quiz_run_path(@quiz_run), "post" do

      assert_select "input#quiz_run_name[name=?]", "quiz_run[name]"

      assert_select "textarea#quiz_run_description[name=?]", "quiz_run[description]"
    end
  end
end
