require 'rails_helper'

RSpec.describe "events/index", :type => :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :tournament => nil,
        :athlete => nil,
        :name => "Name",
        :score => 1.5,
        :place => 1
      ),
      Event.create!(
        :tournament => nil,
        :athlete => nil,
        :name => "Name",
        :score => 1.5,
        :place => 1
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
