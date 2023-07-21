require "test_helper"

class OccupiedStoragesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @occupied_storage = occupied_storages(:one)
  end

  test "should get index" do
    get occupied_storages_url
    assert_response :success
  end

  test "should get new" do
    get new_occupied_storage_url
    assert_response :success
  end

  test "should create occupied_storage" do
    assert_difference("OccupiedStorage.count") do
      post occupied_storages_url, params: { occupied_storage: { client_id: @occupied_storage.client_id, storage_id: @occupied_storage.storage_id } }
    end

    assert_redirected_to occupied_storage_url(OccupiedStorage.last)
  end

  test "should show occupied_storage" do
    get occupied_storage_url(@occupied_storage)
    assert_response :success
  end

  test "should get edit" do
    get edit_occupied_storage_url(@occupied_storage)
    assert_response :success
  end

  test "should update occupied_storage" do
    patch occupied_storage_url(@occupied_storage), params: { occupied_storage: { client_id: @occupied_storage.client_id, storage_id: @occupied_storage.storage_id } }
    assert_redirected_to occupied_storage_url(@occupied_storage)
  end

  test "should destroy occupied_storage" do
    assert_difference("OccupiedStorage.count", -1) do
      delete occupied_storage_url(@occupied_storage)
    end

    assert_redirected_to occupied_storages_url
  end
end
