require 'rails_helper'

RSpec.describe "events/show", :type => :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :tournament => nil,
      :athlete => nil,
      :type => Event::TYPES.first,
      :score => 1.5,
      :place => 1
    ))
  end

  xit "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/floor/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1/)
  end
end
