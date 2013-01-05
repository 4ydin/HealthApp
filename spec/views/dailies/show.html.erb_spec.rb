require 'spec_helper'

describe "dailies/show" do
  before(:each) do
    @daily = assign(:daily, stub_model(Daily,
      :total => 1,
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Content/)
  end
end
