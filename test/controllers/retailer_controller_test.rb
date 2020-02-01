require 'test_helper'

class RetailerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get retailer_index_url
    assert_response :success
  end

  test "should get new" do
    get retailer_new_url
    assert_response :success
  end

  test "should get edit" do
    get retailer_edit_url
    assert_response :success
  end

end
