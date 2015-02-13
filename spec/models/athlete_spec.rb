require 'rails_helper'

RSpec.describe Athlete, :type => :model do
  it { is_expected.to respond_to :age }
end
