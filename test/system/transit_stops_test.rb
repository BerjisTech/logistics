require "application_system_test_case"

class TransitStopsTest < ApplicationSystemTestCase
  setup do
    @transit_stop = transit_stops(:one)
  end

  test "visiting the index" do
    visit transit_stops_url
    assert_selector "h1", text: "Transit stops"
  end

  test "should create transit stop" do
    visit transit_stops_url
    click_on "New transit stop"

    fill_in "Company branch", with: @transit_stop.company_branch_id
    fill_in "Transit route", with: @transit_stop.transit_route_id
    click_on "Create Transit stop"

    assert_text "Transit stop was successfully created"
    click_on "Back"
  end

  test "should update Transit stop" do
    visit transit_stop_url(@transit_stop)
    click_on "Edit this transit stop", match: :first

    fill_in "Company branch", with: @transit_stop.company_branch_id
    fill_in "Transit route", with: @transit_stop.transit_route_id
    click_on "Update Transit stop"

    assert_text "Transit stop was successfully updated"
    click_on "Back"
  end

  test "should destroy Transit stop" do
    visit transit_stop_url(@transit_stop)
    click_on "Destroy this transit stop", match: :first

    assert_text "Transit stop was successfully destroyed"
  end
end
