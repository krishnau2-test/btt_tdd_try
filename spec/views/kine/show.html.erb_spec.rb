require 'spec_helper'

describe "kine/show" do
  before(:each) do
    @cow = assign(:cow, stub_model(Cow,
      :name => "Name",
      :age => 1,
      :zipcode => "Zipcode"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Zipcode/)
  end
end
