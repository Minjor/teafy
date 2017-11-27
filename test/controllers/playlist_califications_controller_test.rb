require 'test_helper'

class PlaylistCalificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playlist_calification = playlist_califications(:one)
  end

  test "should get index" do
    get playlist_califications_url
    assert_response :success
  end

  test "should get new" do
    get new_playlist_calification_url
    assert_response :success
  end

  test "should create playlist_calification" do
    assert_difference('PlaylistCalification.count') do
      post playlist_califications_url, params: { playlist_calification: { grade: @playlist_calification.grade, playlist_id: @playlist_calification.playlist_id, user_id: @playlist_calification.user_id } }
    end

    assert_redirected_to playlist_calification_url(PlaylistCalification.last)
  end

  test "should show playlist_calification" do
    get playlist_calification_url(@playlist_calification)
    assert_response :success
  end

  test "should get edit" do
    get edit_playlist_calification_url(@playlist_calification)
    assert_response :success
  end

  test "should update playlist_calification" do
    patch playlist_calification_url(@playlist_calification), params: { playlist_calification: { grade: @playlist_calification.grade, playlist_id: @playlist_calification.playlist_id, user_id: @playlist_calification.user_id } }
    assert_redirected_to playlist_calification_url(@playlist_calification)
  end

  test "should destroy playlist_calification" do
    assert_difference('PlaylistCalification.count', -1) do
      delete playlist_calification_url(@playlist_calification)
    end

    assert_redirected_to playlist_califications_url
  end
end
