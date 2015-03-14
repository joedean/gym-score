require 'rails_helper'

RSpec.describe Meet, :type => :model do
  describe "#add_events" do
    let(:meet) { create :meet }
    let(:meet_result) { Meet.by_athlete_meet(meet.athlete.id,
                                                   meet.meet.id) }

    before do
      meet.add_events
    end

    it "creates the default meet events" do
      expect(meet_result.events.count).to eq(6)
    end
  end
end
