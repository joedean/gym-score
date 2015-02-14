require 'rails_helper'

RSpec.describe "events/edit", :type => :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :tournament => nil,
      :athlete => nil,
      :type => Event::TYPES.first,
      :score => 1.5,
      :place => 1
    ))
  end

  xit "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_tournament_id[name=?]", "event[tournament_id]"

      assert_select "input#event_athlete_id[name=?]", "event[athlete_id]"

      assert_select "input#event_name[name=?]", "event[type]"

      assert_select "input#event_score[name=?]", "event[score]"

      assert_select "input#event_place[name=?]", "event[place]"
    end
  end
end
