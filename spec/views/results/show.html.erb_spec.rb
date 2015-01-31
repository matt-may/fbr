require 'rails_helper'

RSpec.describe "results/show", :type => :view do
  before(:each) do
    @result = assign(:result, Result.create!(
      :question => nil,
      :quiz_run => nil,
      :expected_answer_id => 1,
      :actual_answer_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
