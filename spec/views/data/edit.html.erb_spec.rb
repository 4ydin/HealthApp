require 'spec_helper'

describe "data/edit" do
  before(:each) do
    @datum = assign(:datum, stub_model(Datum,
      :weight => 1,
      :height => 1
    ))
  end

  it "renders the edit datum form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => data_path(@datum), :method => "post" do
      assert_select "input#datum_weight", :name => "datum[weight]"
      assert_select "input#datum_height", :name => "datum[height]"
    end
  end
end
