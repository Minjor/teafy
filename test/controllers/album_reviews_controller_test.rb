require 'test_helper'

class AlbumReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @album_review = album_reviews(:one)
  end

  test "should get index" do
    get album_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_album_review_url
    assert_response :success
  end

  test "should create album_review" do
    assert_difference('AlbumReview.count') do
      post album_reviews_url, params: { album_review: { album_id: @album_review.album_id, review: @album_review.review, user_id: @album_review.user_id } }
    end

    assert_redirected_to album_review_url(AlbumReview.last)
  end

  test "should show album_review" do
    get album_review_url(@album_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_album_review_url(@album_review)
    assert_response :success
  end

  test "should update album_review" do
    patch album_review_url(@album_review), params: { album_review: { album_id: @album_review.album_id, review: @album_review.review, user_id: @album_review.user_id } }
    assert_redirected_to album_review_url(@album_review)
  end

  test "should destroy album_review" do
    assert_difference('AlbumReview.count', -1) do
      delete album_review_url(@album_review)
    end

    assert_redirected_to album_reviews_url
  end
end
