require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get contant" do
    get pages_contant_url
    assert_response :success
  end
end
