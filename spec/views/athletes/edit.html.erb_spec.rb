require 'rails_helper'

RSpec.describe "athletes/edit", :type => :view do
  before(:each) do
    @athlete = assign(:athlete, Athlete.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :age_level => "MyString",
      :class_level => 1
    ))
  end

  it "renders the edit athlete form" do
    render

    assert_select "form[action=?][method=?]", athlete_path(@athlete), "post" do

      assert_select "input#athlete_first_name[name=?]", "athlete[first_name]"

      assert_select "input#athlete_last_name[name=?]", "athlete[last_name]"

      assert_select "input#athlete_age_level[name=?]", "athlete[age_level]"

      assert_select "input#athlete_class_level[name=?]", "athlete[class_level]"
    end
  end
end
