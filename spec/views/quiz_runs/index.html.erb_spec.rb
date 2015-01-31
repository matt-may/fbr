require 'rails_helper'

RSpec.describe "quiz_runs/index", :type => :view do
  before(:each) do
    assign(:quiz_runs, [
      QuizRun.create!(
        :name => "Name",
        :description => "MyText"
      ),
      QuizRun.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of quiz_runs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
