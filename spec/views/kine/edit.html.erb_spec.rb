require 'spec_helper'

describe "kine/edit" do
  before(:each) do
    @cow = assign(:cow, stub_model(Cow,
      :name => "MyString",
      :age => 1,
      :zipcode => "MyString"
    ))
  end

  it "renders the edit cow form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cow_path(@cow), "post" do
      assert_select "input#cow_name[name=?]", "cow[name]"
      assert_select "input#cow_age[name=?]", "cow[age]"
      assert_select "input#cow_zipcode[name=?]", "cow[zipcode]"
    end
  end
end
