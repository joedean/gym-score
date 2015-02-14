require 'rails_helper'

RSpec.describe Athlete, :type => :model do
  it { is_expected.to respond_to :age }
  it { is_expected.to respond_to :full_name }

  describe "#age" do
    subject(:athlete) { build :athlete, birth_date: birth_date }

    before do
      Timecop.freeze(Time.local(2015))
    end

    after do
      Timecop.return
    end

    context "when athlete was born 13 years ago" do
      let(:birth_date) { "2002-01-01" }

      it "calculates the correct age" do
        expect(athlete.age).to eq(13)
      end
    end
  end
end
