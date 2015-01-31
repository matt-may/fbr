require 'rails_helper'

RSpec.describe "results/index", :type => :view do
  before(:each) do
    assign(:results, [
      Result.create!(
        :question => nil,
        :quiz_run => nil,
        :expected_answer_id => 1,
        :actual_answer_id => 2
      ),
      Result.create!(
        :question => nil,
        :quiz_run => nil,
        :expected_answer_id => 1,
        :actual_answer_id => 2
      )
    ])
  end

  it "renders a list of results" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 4
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
