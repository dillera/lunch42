require 'spec_helper'

describe "venues/edit.html.erb" do
  before(:each) do
    @venue = assign(:venue, stub_model(Venue,
      :name => "MyString",
      :description => "MyText",
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zipcode => "MyString",
      :phone => "MyString",
      :distance => "9.99"
    ))
  end

  it "renders the edit venue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => venues_path(@venue), :method => "post" do
      assert_select "input#venue_name", :name => "venue[name]"
      assert_select "textarea#venue_description", :name => "venue[description]"
      assert_select "input#venue_address1", :name => "venue[address1]"
      assert_select "input#venue_address2", :name => "venue[address2]"
      assert_select "input#venue_city", :name => "venue[city]"
      assert_select "input#venue_state", :name => "venue[state]"
      assert_select "input#venue_zipcode", :name => "venue[zipcode]"
      assert_select "input#venue_phone", :name => "venue[phone]"
      assert_select "input#venue_distance", :name => "venue[distance]"
    end
  end
end
