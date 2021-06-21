require 'test_helper'

class GitUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get git_users_search_url
    assert_response :success
  end

end
