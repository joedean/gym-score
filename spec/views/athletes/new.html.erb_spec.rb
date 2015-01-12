require 'rails_helper'

RSpec.describe "athletes/new", :type => :view do
  before(:each) do
    assign(:athlete, Athlete.new(
      :tournament => nil,
      :first_name => "MyString",
      :last_name => "MyString",
      :age_level => "MyString",
      :class_level => 1
    ))
  end

  it "renders new athlete form" do
    render

    assert_select "form[action=?][method=?]", athletes_path, "post" do

      assert_select "input#athlete_tournament_id[name=?]", "athlete[tournament_id]"

      assert_select "input#athlete_first_name[name=?]", "athlete[first_name]"

      assert_select "input#athlete_last_name[name=?]", "athlete[last_name]"

      assert_select "input#athlete_age_level[name=?]", "athlete[age_level]"

      assert_select "input#athlete_class_level[name=?]", "athlete[class_level]"
    end
  end
end
