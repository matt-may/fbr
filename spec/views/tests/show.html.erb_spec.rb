require 'rails_helper'

RSpec.describe "tests/show", :type => :view do
  before(:each) do
    @test = assign(:test, Test.create!(
      :quiz_run => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
