require 'rails_helper'

RSpec.describe "trips/new", type: :view do
  before(:each) do
    assign(:trip, Trip.new(
      :from => "MyString",
      :to => "MyString",
      :round_trip => false
    ))
  end

  it "renders new trip form" do
    render

    assert_select "form[action=?][method=?]", trips_path, "post" do

      assert_select "input#trip_from[name=?]", "trip[from]"

      assert_select "input#trip_to[name=?]", "trip[to]"

      assert_select "input#trip_round_trip[name=?]", "trip[round_trip]"
    end
  end
end
