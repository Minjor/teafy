require 'test_helper'

class SongReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @song_review = song_reviews(:one)
  end

  test "should get index" do
    get song_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_song_review_url
    assert_response :success
  end

  test "should create song_review" do
    assert_difference('SongReview.count') do
      post song_reviews_url, params: { song_review: { review: @song_review.review, song_id: @song_review.song_id, user_id: @song_review.user_id } }
    end

    assert_redirected_to song_review_url(SongReview.last)
  end

  test "should show song_review" do
    get song_review_url(@song_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_song_review_url(@song_review)
    assert_response :success
  end

  test "should update song_review" do
    patch song_review_url(@song_review), params: { song_review: { review: @song_review.review, song_id: @song_review.song_id, user_id: @song_review.user_id } }
    assert_redirected_to song_review_url(@song_review)
  end

  test "should destroy song_review" do
    assert_difference('SongReview.count', -1) do
      delete song_review_url(@song_review)
    end

    assert_redirected_to song_reviews_url
  end
end
