require 'spec_helper'

describe "kine/index" do
  before(:each) do
    assign(:kine, [
      stub_model(Cow,
        :name => "Name",
        :age => 1,
        :zipcode => "Zipcode"
      ),
      stub_model(Cow,
        :name => "Name",
        :age => 1,
        :zipcode => "Zipcode"
      )
    ])
  end

  it "renders a list of kine" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
  end
end
