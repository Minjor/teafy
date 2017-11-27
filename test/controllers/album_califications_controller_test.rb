require 'test_helper'

class AlbumCalificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @album_calification = album_califications(:one)
  end

  test "should get index" do
    get album_califications_url
    assert_response :success
  end

  test "should get new" do
    get new_album_calification_url
    assert_response :success
  end

  test "should create album_calification" do
    assert_difference('AlbumCalification.count') do
      post album_califications_url, params: { album_calification: { album_id: @album_calification.album_id, user_id: @album_calification.user_id } }
    end

    assert_redirected_to album_calification_url(AlbumCalification.last)
  end

  test "should show album_calification" do
    get album_calification_url(@album_calification)
    assert_response :success
  end

  test "should get edit" do
    get edit_album_calification_url(@album_calification)
    assert_response :success
  end

  test "should update album_calification" do
    patch album_calification_url(@album_calification), params: { album_calification: { album_id: @album_calification.album_id, user_id: @album_calification.user_id } }
    assert_redirected_to album_calification_url(@album_calification)
  end

  test "should destroy album_calification" do
    assert_difference('AlbumCalification.count', -1) do
      delete album_calification_url(@album_calification)
    end

    assert_redirected_to album_califications_url
  end
end
