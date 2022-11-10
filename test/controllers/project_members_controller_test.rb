require "test_helper"

class ProjectMembersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get project_members_show_url
    assert_response :success
  end
end
