require "test_helper"

class TransitStopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transit_stop = transit_stops(:one)
  end

  test "should get index" do
    get transit_stops_url
    assert_response :success
  end

  test "should get new" do
    get new_transit_stop_url
    assert_response :success
  end

  test "should create transit_stop" do
    assert_difference("TransitStop.count") do
      post transit_stops_url, params: { transit_stop: { company_branch_id: @transit_stop.company_branch_id, transit_route_id: @transit_stop.transit_route_id } }
    end

    assert_redirected_to transit_stop_url(TransitStop.last)
  end

  test "should show transit_stop" do
    get transit_stop_url(@transit_stop)
    assert_response :success
  end

  test "should get edit" do
    get edit_transit_stop_url(@transit_stop)
    assert_response :success
  end

  test "should update transit_stop" do
    patch transit_stop_url(@transit_stop), params: { transit_stop: { company_branch_id: @transit_stop.company_branch_id, transit_route_id: @transit_stop.transit_route_id } }
    assert_redirected_to transit_stop_url(@transit_stop)
  end

  test "should destroy transit_stop" do
    assert_difference("TransitStop.count", -1) do
      delete transit_stop_url(@transit_stop)
    end

    assert_redirected_to transit_stops_url
  end
end
