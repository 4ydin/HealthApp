require 'spec_helper'

describe "data/index" do
  before(:each) do
    assign(:data, [
      stub_model(Datum,
        :weight => 1,
        :height => 2
      ),
      stub_model(Datum,
        :weight => 1,
        :height => 2
      )
    ])
  end

  it "renders a list of data" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
