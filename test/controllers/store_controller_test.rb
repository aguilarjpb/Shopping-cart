require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
    assert_select '#columns #side a', minimun: 4
    assert_select '#main .entry', 3
    assert_select 'h3', 'Programming with Ruby 1.9'
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

end
