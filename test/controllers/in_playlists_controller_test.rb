require 'test_helper'

class InPlaylistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @in_playlist = in_playlists(:one)
  end

  test "should get index" do
    get in_playlists_url
    assert_response :success
  end

  test "should get new" do
    get new_in_playlist_url
    assert_response :success
  end

  test "should create in_playlist" do
    assert_difference('InPlaylist.count') do
      post in_playlists_url, params: { in_playlist: { playlist_id: @in_playlist.playlist_id, song_id: @in_playlist.song_id } }
    end

    assert_redirected_to in_playlist_url(InPlaylist.last)
  end

  test "should show in_playlist" do
    get in_playlist_url(@in_playlist)
    assert_response :success
  end

  test "should get edit" do
    get edit_in_playlist_url(@in_playlist)
    assert_response :success
  end

  test "should update in_playlist" do
    patch in_playlist_url(@in_playlist), params: { in_playlist: { playlist_id: @in_playlist.playlist_id, song_id: @in_playlist.song_id } }
    assert_redirected_to in_playlist_url(@in_playlist)
  end

  test "should destroy in_playlist" do
    assert_difference('InPlaylist.count', -1) do
      delete in_playlist_url(@in_playlist)
    end

    assert_redirected_to in_playlists_url
  end
end
