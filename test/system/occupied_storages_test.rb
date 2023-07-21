# frozen_string_literal: true

require 'application_system_test_case'

class OccupiedStoragesTest < ApplicationSystemTestCase
  setup do
    @occupied_storage = occupied_storages(:one)
  end

  test 'visiting the index' do
    visit occupied_storages_url
    assert_selector 'h1', text: 'Occupied storages'
  end

  test 'should create occupied storage' do
    visit occupied_storages_url
    click_on 'New occupied storage'

    fill_in 'Client', with: @occupied_storage.client_id
    fill_in 'Storage', with: @occupied_storage.storage_id
    click_on 'Create Occupied storage'

    assert_text 'Occupied storage was successfully created'
    click_on 'Back'
  end

  test 'should update Occupied storage' do
    visit occupied_storage_url(@occupied_storage)
    click_on 'Edit this occupied storage', match: :first

    fill_in 'Client', with: @occupied_storage.client_id
    fill_in 'Storage', with: @occupied_storage.storage_id
    click_on 'Update Occupied storage'

    assert_text 'Occupied storage was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Occupied storage' do
    visit occupied_storage_url(@occupied_storage)
    click_on 'Destroy this occupied storage', match: :first

    assert_text 'Occupied storage was successfully destroyed'
  end
end
