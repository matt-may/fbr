require 'rails_helper'

RSpec.describe "tests/edit", :type => :view do
  before(:each) do
    @test = assign(:test, Test.create!(
      :quiz_run => nil
    ))
  end

  it "renders the edit test form" do
    render

    assert_select "form[action=?][method=?]", test_path(@test), "post" do

      assert_select "input#test_quiz_run_id[name=?]", "test[quiz_run_id]"
    end
  end
end
