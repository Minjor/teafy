class PlaylistsController < ApplicationController
  before_action :set_playlist, only: [:show, :edit, :update, :destroy, :follow, :unfollow]

  # GET /playlists
  # GET /playlists.json
  def index
    @playlists = Playlist.all
  end

  # GET /playlists/1
  # GET /playlists/1.json
  def show
        if user_signed_in?
            if params[:follow] == 'U'
                User.find(current_user.id).playlists.delete(@playlist)
            elsif params[:follow] == 'F'
                User.find(current_user.id).playlists << @playlist
            end
            if params[:song_id] && params[:r]
                @playlist.songs.delete(Song.find(params[:song_id]))
            elsif params[:song_id]
                @playlist.songs << Song.find(params[:song_id])
            end
        end
  end

  # GET /playlists/new
  def new
    @playlist = Playlist.new
  end

  # GET /playlists/1/edit
  def edit
  end

  # POST /playlists
  # POST /playlists.json
  def create
    @playlist = Playlist.new(playlist_params)
    @playlist.user_id = current_user.id

    respond_to do |format|
      if @playlist.save
        format.html { redirect_to @playlist, notice: 'Playlist was successfully created.' }
        format.json { render :show, status: :created, location: @playlist }
      else
        format.html { render :new }
        format.json { render json: @playlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playlists/1
  # PATCH/PUT /playlists/1.json
  def update
    respond_to do |format|
      if @playlist.update(playlist_params)
        format.html { redirect_to @playlist, notice: 'Playlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @playlist }
      else
        format.html { render :edit }
        format.json { render json: @playlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playlists/1
  # DELETE /playlists/1.json
  def destroy
    @playlist.destroy
    respond_to do |format|
      format.html { redirect_to playlists_url, notice: 'Playlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # POST /playlists/follow
  def follow
      User.find(current_user.id).playlists << @playlist
      render action: 'show'
  end

  # POST /playlists/unfollow
  def unfollow
      User.find(current_user.id).playlists.delete(@playlist)
      render action: 'show'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlist
      @playlist = Playlist.find(params[:id])
      @user = User.find(@playlist.user_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def playlist_params
      params.require(:playlist).permit(:name)
    end
end
