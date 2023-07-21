require "test_helper"

class MessagingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @messaging = messagings(:one)
  end

  test "should get index" do
    get messagings_url
    assert_response :success
  end

  test "should get new" do
    get new_messaging_url
    assert_response :success
  end

  test "should create messaging" do
    assert_difference("Messaging.count") do
      post messagings_url, params: { messaging: { deleted: @messaging.deleted, message: @messaging.message, read: @messaging.read, receiver: @messaging.receiver, replying_to: @messaging.replying_to, sender: @messaging.sender } }
    end

    assert_redirected_to messaging_url(Messaging.last)
  end

  test "should show messaging" do
    get messaging_url(@messaging)
    assert_response :success
  end

  test "should get edit" do
    get edit_messaging_url(@messaging)
    assert_response :success
  end

  test "should update messaging" do
    patch messaging_url(@messaging), params: { messaging: { deleted: @messaging.deleted, message: @messaging.message, read: @messaging.read, receiver: @messaging.receiver, replying_to: @messaging.replying_to, sender: @messaging.sender } }
    assert_redirected_to messaging_url(@messaging)
  end

  test "should destroy messaging" do
    assert_difference("Messaging.count", -1) do
      delete messaging_url(@messaging)
    end

    assert_redirected_to messagings_url
  end
end
