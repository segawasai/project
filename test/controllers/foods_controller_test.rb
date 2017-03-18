require 'test_helper'

class FoodsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get foods_show_url
    assert_response :success
  end

end
