require 'test_helper'

class ArtistReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artist_review = artist_reviews(:one)
  end

  test "should get index" do
    get artist_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_artist_review_url
    assert_response :success
  end

  test "should create artist_review" do
    assert_difference('ArtistReview.count') do
      post artist_reviews_url, params: { artist_review: { artist_id: @artist_review.artist_id, review: @artist_review.review, user_id: @artist_review.user_id } }
    end

    assert_redirected_to artist_review_url(ArtistReview.last)
  end

  test "should show artist_review" do
    get artist_review_url(@artist_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_artist_review_url(@artist_review)
    assert_response :success
  end

  test "should update artist_review" do
    patch artist_review_url(@artist_review), params: { artist_review: { artist_id: @artist_review.artist_id, review: @artist_review.review, user_id: @artist_review.user_id } }
    assert_redirected_to artist_review_url(@artist_review)
  end

  test "should destroy artist_review" do
    assert_difference('ArtistReview.count', -1) do
      delete artist_review_url(@artist_review)
    end

    assert_redirected_to artist_reviews_url
  end
end
