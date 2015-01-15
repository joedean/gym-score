require 'rails_helper'

RSpec.describe "events/new", :type => :view do
  before(:each) do
    assign(:event, Event.new(
      :tournament => nil,
      :athlete => nil,
      :name => "MyString",
      :score => 1.5,
      :place => 1
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_tournament_id[name=?]", "event[tournament_id]"

      assert_select "input#event_athlete_id[name=?]", "event[athlete_id]"

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_score[name=?]", "event[score]"

      assert_select "input#event_place[name=?]", "event[place]"
    end
  end
end
