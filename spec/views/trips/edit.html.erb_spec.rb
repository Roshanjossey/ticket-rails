require 'rails_helper'

RSpec.describe "trips/edit", type: :view do
  before(:each) do
    @trip = assign(:trip, Trip.create!(
      :from => "MyString",
      :to => "MyString",
      :round_trip => false
    ))
  end

  it "renders the edit trip form" do
    render

    assert_select "form[action=?][method=?]", trip_path(@trip), "post" do

      assert_select "input#trip_from[name=?]", "trip[from]"

      assert_select "input#trip_to[name=?]", "trip[to]"

      assert_select "input#trip_round_trip[name=?]", "trip[round_trip]"
    end
  end
end
