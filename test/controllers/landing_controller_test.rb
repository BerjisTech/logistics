require "test_helper"

class LandingControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get landing_home_url
    assert_response :success
  end

  test "should get about" do
    get landing_about_url
    assert_response :success
  end

  test "should get contact" do
    get landing_contact_url
    assert_response :success
  end

  test "should get faq" do
    get landing_faq_url
    assert_response :success
  end

  test "should get storage" do
    get landing_storage_url
    assert_response :success
  end

  test "should get supply" do
    get landing_supply_url
    assert_response :success
  end

  test "should get manufacture" do
    get landing_manufacture_url
    assert_response :success
  end
end
