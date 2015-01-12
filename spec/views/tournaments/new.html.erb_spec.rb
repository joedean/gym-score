require 'rails_helper'

RSpec.describe "tournaments/new", :type => :view do
  before(:each) do
    assign(:tournament, Tournament.new(
      :name => "MyString",
      :venue => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString"
    ))
  end

  it "renders new tournament form" do
    render

    assert_select "form[action=?][method=?]", tournaments_path, "post" do

      assert_select "input#tournament_name[name=?]", "tournament[name]"

      assert_select "input#tournament_venue[name=?]", "tournament[venue]"

      assert_select "input#tournament_address[name=?]", "tournament[address]"

      assert_select "input#tournament_city[name=?]", "tournament[city]"

      assert_select "input#tournament_state[name=?]", "tournament[state]"

      assert_select "input#tournament_zip[name=?]", "tournament[zip]"
    end
  end
end
