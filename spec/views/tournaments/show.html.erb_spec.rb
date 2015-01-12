require 'rails_helper'

RSpec.describe "tournaments/show", :type => :view do
  before(:each) do
    @tournament = assign(:tournament, Tournament.create!(
      :name => "Name",
      :venue => "Venue",
      :address => "Address",
      :city => "City",
      :state => "State",
      :zip => "Zip"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Venue/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
  end
end
