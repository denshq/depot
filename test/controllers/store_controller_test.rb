require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
    assert_select '.side_nav ul a', minimum: 4
    assert_select '.catalog li', 3
    assert_select '.catalog li h3', 'Corsair CX750 v2 80+ Bronze 750 Watt'
  end

end
