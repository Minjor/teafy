require 'test_helper'

class SongCalificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @song_calification = song_califications(:one)
  end

  test "should get index" do
    get song_califications_url
    assert_response :success
  end

  test "should get new" do
    get new_song_calification_url
    assert_response :success
  end

  test "should create song_calification" do
    assert_difference('SongCalification.count') do
      post song_califications_url, params: { song_calification: { grade: @song_calification.grade, song_id: @song_calification.song_id, user_id: @song_calification.user_id } }
    end

    assert_redirected_to song_calification_url(SongCalification.last)
  end

  test "should show song_calification" do
    get song_calification_url(@song_calification)
    assert_response :success
  end

  test "should get edit" do
    get edit_song_calification_url(@song_calification)
    assert_response :success
  end

  test "should update song_calification" do
    patch song_calification_url(@song_calification), params: { song_calification: { grade: @song_calification.grade, song_id: @song_calification.song_id, user_id: @song_calification.user_id } }
    assert_redirected_to song_calification_url(@song_calification)
  end

  test "should destroy song_calification" do
    assert_difference('SongCalification.count', -1) do
      delete song_calification_url(@song_calification)
    end

    assert_redirected_to song_califications_url
  end
end
