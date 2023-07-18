require 'test_helper'

class TastingSheetsControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get tasting_sheets_new_url
    assert_response :success
  end
end
