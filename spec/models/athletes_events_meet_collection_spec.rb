require 'rails_helper'

RSpec.describe AthletesEventsMeetCollection, type: :model do
  describe "#overall_score" do
    let!(:athletes_events_meets) { create :athletes_events_meet }

    it "sums all event scores for the meet" do
      binding.pry

    end
  end
end
