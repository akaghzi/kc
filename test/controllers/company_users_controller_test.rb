require 'test_helper'

class CompanyUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get company_users_index_url
    assert_response :success
  end

end
