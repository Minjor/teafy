require 'test_helper'

class AtistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atist = atists(:one)
  end

  test "should get index" do
    get atists_url
    assert_response :success
  end

  test "should get new" do
    get new_atist_url
    assert_response :success
  end

  test "should create atist" do
    assert_difference('Atist.count') do
      post atists_url, params: { atist: { bio: @atist.bio, name: @atist.name } }
    end

    assert_redirected_to atist_url(Atist.last)
  end

  test "should show atist" do
    get atist_url(@atist)
    assert_response :success
  end

  test "should get edit" do
    get edit_atist_url(@atist)
    assert_response :success
  end

  test "should update atist" do
    patch atist_url(@atist), params: { atist: { bio: @atist.bio, name: @atist.name } }
    assert_redirected_to atist_url(@atist)
  end

  test "should destroy atist" do
    assert_difference('Atist.count', -1) do
      delete atist_url(@atist)
    end

    assert_redirected_to atists_url
  end
end
