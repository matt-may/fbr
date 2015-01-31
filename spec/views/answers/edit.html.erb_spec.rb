require 'rails_helper'

RSpec.describe "answers/edit", :type => :view do
  before(:each) do
    @question = Question.create! prompt: "Hello"
    @answer = assign(:answer, Answer.create!(
      :description => "MyText",
      :question => @question
    ))
  end

  it "renders the edit answer form" do
    render

    assert_select "form[action=?][method=?]", answer_path(@answer), "post" do

      assert_select "textarea#answer_description[name=?]", "answer[description]"

    end
  end
end
