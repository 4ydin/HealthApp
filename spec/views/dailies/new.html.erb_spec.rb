require 'spec_helper'

describe "dailies/new" do
  before(:each) do
    assign(:daily, stub_model(Daily,
      :total => 1,
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new daily form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dailies_path, :method => "post" do
      assert_select "input#daily_total", :name => "daily[total]"
      assert_select "input#daily_content", :name => "daily[content]"
    end
  end
end
