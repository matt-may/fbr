require 'rails_helper'

RSpec.describe "answers/new", :type => :view do
  before(:each) do
    assign(:answer, Answer.new(
      :description => "MyText",
      :question => nil
    ))
  end

  it "renders new answer form" do
    render

    assert_select "form[action=?][method=?]", answers_path, "post" do

      assert_select "textarea#answer_description[name=?]", "answer[description]"

      assert_select "input#answer_question_id[name=?]", "answer[question_id]"
    end
  end
end
