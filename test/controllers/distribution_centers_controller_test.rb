require 'test_helper'

class DistributionCentersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get distribution_centers_index_url
    assert_response :success
  end

  test "should get new" do
    get distribution_centers_new_url
    assert_response :success
  end

  test "should get edit" do
    get distribution_centers_edit_url
    assert_response :success
  end

  test "should get delete" do
    get distribution_centers_delete_url
    assert_response :success
  end

end
