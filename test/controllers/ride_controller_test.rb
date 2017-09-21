require 'test_helper'

class RideControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ride_index_url
    assert_response :success
  end

  test "should get new" do
    get ride_new_url
    assert_response :success
  end

  test "should get create" do
    get ride_create_url
    assert_response :success
  end

  test "should get show" do
    get ride_show_url
    assert_response :success
  end

end
