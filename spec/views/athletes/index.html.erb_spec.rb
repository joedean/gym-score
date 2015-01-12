require 'rails_helper'

RSpec.describe "athletes/index", :type => :view do
  before(:each) do
    assign(:athletes, [
      Athlete.create!(
        :tournament => nil,
        :first_name => "First Name",
        :last_name => "Last Name",
        :age_level => "Age Level",
        :class_level => 1
      ),
      Athlete.create!(
        :tournament => nil,
        :first_name => "First Name",
        :last_name => "Last Name",
        :age_level => "Age Level",
        :class_level => 1
      )
    ])
  end

  it "renders a list of athletes" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Age Level".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
