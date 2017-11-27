require 'test_helper'

class ArtistCalificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist_calification = artist_califications(:one)
  end

  test "should get index" do
    get artist_califications_url
    assert_response :success
  end

  test "should get new" do
    get new_artist_calification_url
    assert_response :success
  end

  test "should create artist_calification" do
    assert_difference('ArtistCalification.count') do
      post artist_califications_url, params: { artist_calification: { artist_id: @artist_calification.artist_id, grade.integer: @artist_calification.grade.integer, user_id: @artist_calification.user_id } }
    end

    assert_redirected_to artist_calification_url(ArtistCalification.last)
  end

  test "should show artist_calification" do
    get artist_calification_url(@artist_calification)
    assert_response :success
  end

  test "should get edit" do
    get edit_artist_calification_url(@artist_calification)
    assert_response :success
  end

  test "should update artist_calification" do
    patch artist_calification_url(@artist_calification), params: { artist_calification: { artist_id: @artist_calification.artist_id, grade.integer: @artist_calification.grade.integer, user_id: @artist_calification.user_id } }
    assert_redirected_to artist_calification_url(@artist_calification)
  end

  test "should destroy artist_calification" do
    assert_difference('ArtistCalification.count', -1) do
      delete artist_calification_url(@artist_calification)
    end

    assert_redirected_to artist_califications_url
  end
end
