require 'rails_helper'

RSpec.describe "events/index", :type => :view do
  let!(:meet) { create :meet }
  let(:param) { { meet_id: meet.meet.id,
                  athlete_id: meet.athlete.id } }

  before(:each) do
    assign(:events, [
      Event.create!(
        :meet_id => meet.id,
        :type => Event::TYPES.first,
        :score => 1.5,
        :place => 1
      ),
      Event.create!(
        :meet_id => meet.id,
        :type => Event::TYPES.first,
        :score => 1.5,
        :place => 1
      )
           ])

    meet.events << events
    assign(:event_collection, EventCollection.new(params))
  end

  xit "renders a list of events" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 4
    assert_select "tr>td", :text => Event::TYPES.first.to_s, :count => 3
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
