require "application_system_test_case"

class MessagingsTest < ApplicationSystemTestCase
  setup do
    @messaging = messagings(:one)
  end

  test "visiting the index" do
    visit messagings_url
    assert_selector "h1", text: "Messagings"
  end

  test "should create messaging" do
    visit messagings_url
    click_on "New messaging"

    check "Deleted" if @messaging.deleted
    fill_in "Message", with: @messaging.message
    check "Read" if @messaging.read
    fill_in "Receiver", with: @messaging.receiver
    fill_in "Replying to", with: @messaging.replying_to
    fill_in "Sender", with: @messaging.sender
    click_on "Create Messaging"

    assert_text "Messaging was successfully created"
    click_on "Back"
  end

  test "should update Messaging" do
    visit messaging_url(@messaging)
    click_on "Edit this messaging", match: :first

    check "Deleted" if @messaging.deleted
    fill_in "Message", with: @messaging.message
    check "Read" if @messaging.read
    fill_in "Receiver", with: @messaging.receiver
    fill_in "Replying to", with: @messaging.replying_to
    fill_in "Sender", with: @messaging.sender
    click_on "Update Messaging"

    assert_text "Messaging was successfully updated"
    click_on "Back"
  end

  test "should destroy Messaging" do
    visit messaging_url(@messaging)
    click_on "Destroy this messaging", match: :first

    assert_text "Messaging was successfully destroyed"
  end
end
