# frozen_string_literal: true

require 'test_helper'

class CommandCenterControllerTest < ActionDispatch::IntegrationTest
  test 'should get command_center' do
    get command_center_command_center_url
    assert_response :success
  end
end
