require 'rails_helper'

RSpec.describe "quiz_runs/index", :type => :view do
  before(:each) do
    assign(:questions, [
       Question.create!(
         :prompt => "How much wood did a wood chuck chuck?"
       )
    ])
    assign(:quiz_runs, [
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => "How much wood did a wood chuck chuck?".to_s, :count => 1
  end
end
