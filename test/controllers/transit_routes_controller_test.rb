# frozen_string_literal: true

require 'test_helper'

class TransitRoutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @transit_route = transit_routes(:one)
  end

  test 'should get index' do
    get transit_routes_url
    assert_response :success
  end

  test 'should get new' do
    get new_transit_route_url
    assert_response :success
  end

  test 'should create transit_route' do
    assert_difference('TransitRoute.count') do
      post transit_routes_url, params: { transit_route: { company_branch_id: @transit_route.company_branch_id } }
    end

    assert_redirected_to transit_route_url(TransitRoute.last)
  end

  test 'should show transit_route' do
    get transit_route_url(@transit_route)
    assert_response :success
  end

  test 'should get edit' do
    get edit_transit_route_url(@transit_route)
    assert_response :success
  end

  test 'should update transit_route' do
    patch transit_route_url(@transit_route),
          params: { transit_route: { company_branch_id: @transit_route.company_branch_id } }
    assert_redirected_to transit_route_url(@transit_route)
  end

  test 'should destroy transit_route' do
    assert_difference('TransitRoute.count', -1) do
      delete transit_route_url(@transit_route)
    end

    assert_redirected_to transit_routes_url
  end
end
