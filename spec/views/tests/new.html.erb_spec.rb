require 'rails_helper'

RSpec.describe "tests/new", :type => :view do
  before(:each) do
    assign(:test, Test.new(
      :quiz_run => nil
    ))
  end

  it "renders new test form" do
    render

    assert_select "form[action=?][method=?]", tests_path, "post" do

      assert_select "input#test_quiz_run_id[name=?]", "test[quiz_run_id]"
    end
  end
end
