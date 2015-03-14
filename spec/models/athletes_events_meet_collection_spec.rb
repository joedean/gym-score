require 'rails_helper'

RSpec.describe AthletesEventsMeetCollection, type: :model do
  describe "#overall_score" do
    let(:athletes_events_meets) { build_list :athletes_events_meet, 3,
                                         score: 9.0 }
    let(:collection) { AthletesEventsMeetCollection.new({}) }

    before do
      collection.stub(:athletes_events_meets).and_return(athletes_events_meets)
    end

    it "sums all event scores for the meet" do
      expect(collection.overall_score).to eq(27.0)
    end
  end
end
