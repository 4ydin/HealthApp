require 'spec_helper'

describe "dailies/edit" do
  before(:each) do
    @daily = assign(:daily, stub_model(Daily,
      :total => 1,
      :content => "MyString"
    ))
  end

  it "renders the edit daily form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dailies_path(@daily), :method => "post" do
      assert_select "input#daily_total", :name => "daily[total]"
      assert_select "input#daily_content", :name => "daily[content]"
    end
  end
end
