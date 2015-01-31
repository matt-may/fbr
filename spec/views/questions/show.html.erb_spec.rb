require 'rails_helper'

RSpec.describe "questions/show", :type => :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :prompt => "MyText"
    ))
    @answers = @question.answers
    @answer = Answer.new
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
