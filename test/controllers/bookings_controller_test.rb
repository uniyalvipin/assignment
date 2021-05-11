require "test_helper"

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get generate" do
    get bookings_generate_url
    assert_response :success
  end
end
