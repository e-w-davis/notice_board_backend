require "test_helper"

class NoticesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notice = notices(:one)
  end

  test "should get index" do
    get notices_url, as: :json
    assert_response :success
  end

  test "should create notice" do
    assert_difference("Notice.count") do
      post notices_url, params: { notice: { author: @notice.author, phone: @notice.phone, title: @notice.title } }, as: :json
    end

    assert_response :created
  end

  test "should show notice" do
    get notice_url(@notice), as: :json
    assert_response :success
  end

  test "should update notice" do
    patch notice_url(@notice), params: { notice: { author: @notice.author, phone: @notice.phone, title: @notice.title } }, as: :json
    assert_response :success
  end

  test "should destroy notice" do
    assert_difference("Notice.count", -1) do
      delete notice_url(@notice), as: :json
    end

    assert_response :no_content
  end
end
