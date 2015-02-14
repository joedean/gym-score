require 'rails_helper'

RSpec.describe "events/index", :type => :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :tournament => nil,
        :athlete => nil,
        :type => Event::TYPES.first,
        :score => 1.5,
        :place => 1
      ),
      Event.create!(
        :tournament => nil,
        :athlete => nil,
        :type => Event::TYPES.first,
        :score => 1.5,
        :place => 1
      )
           ])
    assign(:event_collection, EventCollection.new({}))
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 4
    assert_select "tr>td", :text => nil.to_s, :count => 4
    assert_select "tr>td", :text => Event::TYPES.first.to_s, :count => 3
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
