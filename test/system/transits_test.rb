# frozen_string_literal: true

require 'application_system_test_case'

class TransitsTest < ApplicationSystemTestCase
  setup do
    @transit = transits(:one)
  end

  test 'visiting the index' do
    visit transits_url
    assert_selector 'h1', text: 'Transits'
  end

  test 'should create transit' do
    visit transits_url
    click_on 'New transit'

    fill_in 'Company branch', with: @transit.company_branch_id
    fill_in 'Transit route', with: @transit.transit_route_id
    click_on 'Create Transit'

    assert_text 'Transit was successfully created'
    click_on 'Back'
  end

  test 'should update Transit' do
    visit transit_url(@transit)
    click_on 'Edit this transit', match: :first

    fill_in 'Company branch', with: @transit.company_branch_id
    fill_in 'Transit route', with: @transit.transit_route_id
    click_on 'Update Transit'

    assert_text 'Transit was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Transit' do
    visit transit_url(@transit)
    click_on 'Destroy this transit', match: :first

    assert_text 'Transit was successfully destroyed'
  end
end
