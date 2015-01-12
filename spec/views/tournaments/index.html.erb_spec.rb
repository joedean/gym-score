require 'rails_helper'

RSpec.describe "tournaments/index", :type => :view do
  before(:each) do
    assign(:tournaments, [
      Tournament.create!(
        :name => "Name",
        :venue => "Venue",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "Zip"
      ),
      Tournament.create!(
        :name => "Name",
        :venue => "Venue",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "Zip"
      )
    ])
  end

  it "renders a list of tournaments" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Venue".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
  end
end
