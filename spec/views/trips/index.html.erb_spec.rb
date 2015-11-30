require 'rails_helper'

RSpec.describe "trips/index", type: :view do
  before(:each) do
    assign(:trips, [
      Trip.create!(
        :from => "From",
        :to => "To",
        :round_trip => false
      ),
      Trip.create!(
        :from => "From",
        :to => "To",
        :round_trip => false
      )
    ])
  end

  it "renders a list of trips" do
    render
    assert_select "tr>td", :text => "From".to_s, :count => 2
    assert_select "tr>td", :text => "To".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
