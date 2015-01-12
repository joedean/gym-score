require 'rails_helper'

RSpec.describe "athletes/show", :type => :view do
  before(:each) do
    @athlete = assign(:athlete, Athlete.create!(
      :tournament => nil,
      :first_name => "First Name",
      :last_name => "Last Name",
      :age_level => "Age Level",
      :class_level => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Age Level/)
    expect(rendered).to match(/1/)
  end
end
