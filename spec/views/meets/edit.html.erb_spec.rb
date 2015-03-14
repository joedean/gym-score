require 'rails_helper'

RSpec.describe "tournaments/edit", :type => :view do
  before(:each) do
    @tournament = assign(:tournament, Tournament.create!(
      :name => "MyString",
      :venue => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString"
    ))
  end

  it "renders the edit tournament form" do
    render

    assert_select "form[action=?][method=?]", tournament_path(@tournament), "post" do

      assert_select "input#tournament_name[name=?]", "tournament[name]"

      assert_select "input#tournament_venue[name=?]", "tournament[venue]"

      assert_select "input#tournament_address[name=?]", "tournament[address]"

      assert_select "input#tournament_city[name=?]", "tournament[city]"

      assert_select "input#tournament_state[name=?]", "tournament[state]"

      assert_select "input#tournament_zip[name=?]", "tournament[zip]"
    end
  end
end
