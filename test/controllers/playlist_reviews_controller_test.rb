require 'test_helper'

class PlaylistReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playlist_review = playlist_reviews(:one)
  end

  test "should get index" do
    get playlist_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_playlist_review_url
    assert_response :success
  end

  test "should create playlist_review" do
    assert_difference('PlaylistReview.count') do
      post playlist_reviews_url, params: { playlist_review: { playlist_id: @playlist_review.playlist_id, review: @playlist_review.review, user_id: @playlist_review.user_id } }
    end

    assert_redirected_to playlist_review_url(PlaylistReview.last)
  end

  test "should show playlist_review" do
    get playlist_review_url(@playlist_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_playlist_review_url(@playlist_review)
    assert_response :success
  end

  test "should update playlist_review" do
    patch playlist_review_url(@playlist_review), params: { playlist_review: { playlist_id: @playlist_review.playlist_id, review: @playlist_review.review, user_id: @playlist_review.user_id } }
    assert_redirected_to playlist_review_url(@playlist_review)
  end

  test "should destroy playlist_review" do
    assert_difference('PlaylistReview.count', -1) do
      delete playlist_review_url(@playlist_review)
    end

    assert_redirected_to playlist_reviews_url
  end
end
