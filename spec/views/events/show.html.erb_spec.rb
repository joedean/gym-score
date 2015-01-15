require 'rails_helper'

RSpec.describe "events/show", :type => :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :tournament => nil,
      :athlete => nil,
      :name => "Name",
      :score => 1.5,
      :place => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1/)
  end
end
