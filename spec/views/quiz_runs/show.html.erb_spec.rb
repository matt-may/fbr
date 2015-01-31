require 'rails_helper'

RSpec.describe "quiz_runs/show", :type => :view do
  before(:each) do
    @quiz_run = assign(:quiz_run, QuizRun.create!(
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
