require 'rails_helper'

RSpec.describe "events/new", :type => :view do
  before(:each) do
    assign(:event, Event.new(
      :meet => nil,
      :athlete => nil,
      :type => Event::TYPES.first,
      :score => 1.5,
      :place => 1
    ))
  end

  xit "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_meet_id[name=?]", "event[meet_id]"

      assert_select "input#event_athlete_id[name=?]", "event[athlete_id]"

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_score[name=?]", "event[score]"

      assert_select "input#event_place[name=?]", "event[place]"
    end
  end
end
