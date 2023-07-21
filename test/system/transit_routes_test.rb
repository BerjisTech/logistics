# frozen_string_literal: true

require 'application_system_test_case'

class TransitRoutesTest < ApplicationSystemTestCase
  setup do
    @transit_route = transit_routes(:one)
  end

  test 'visiting the index' do
    visit transit_routes_url
    assert_selector 'h1', text: 'Transit routes'
  end

  test 'should create transit route' do
    visit transit_routes_url
    click_on 'New transit route'

    fill_in 'Company branch', with: @transit_route.company_branch_id
    click_on 'Create Transit route'

    assert_text 'Transit route was successfully created'
    click_on 'Back'
  end

  test 'should update Transit route' do
    visit transit_route_url(@transit_route)
    click_on 'Edit this transit route', match: :first

    fill_in 'Company branch', with: @transit_route.company_branch_id
    click_on 'Update Transit route'

    assert_text 'Transit route was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Transit route' do
    visit transit_route_url(@transit_route)
    click_on 'Destroy this transit route', match: :first

    assert_text 'Transit route was successfully destroyed'
  end
end
