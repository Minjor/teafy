class InPlaylistsController < ApplicationController
  before_action :set_in_playlist, only: [:show, :edit, :update]

  # GET /in_playlists
  # GET /in_playlists.json
  def index
    @in_playlists = InPlaylist.all
  end

  # GET /in_playlists/1
  # GET /in_playlists/1.json
  def show
  end

  # GET /in_playlists/new
  def new
    @in_playlist = InPlaylist.new
  end

  # GET /in_playlists/1/edit
  def edit
  end

  # POST /in_playlists
  # POST /in_playlists.json
  def create
    @in_playlist = InPlaylist.new(in_playlist_params)

    respond_to do |format|
      if @in_playlist.save
        format.html { redirect_to @in_playlist, notice: 'In playlist was successfully created.' }
        format.json { render :show, status: :created, location: @in_playlist }
      else
        format.html { render :new }
        format.json { render json: @in_playlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /in_playlists/1
  # PATCH/PUT /in_playlists/1.json
  def update
    respond_to do |format|
      if @in_playlist.update(in_playlist_params)
        format.html { redirect_to @in_playlist, notice: 'In playlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @in_playlist }
      else
        format.html { render :edit }
        format.json { render json: @in_playlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /in_playlists/1
  # DELETE /in_playlists/1.json
  def destroy
    InPlaylist.where(playlist_id: params[:playlist_id], song_id: params[:song_id]).destroy
    respond_to do |format|
      format.html { redirect_to in_playlists_url, notice: 'In playlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_in_playlist
      @in_playlist = InPlaylist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def in_playlist_params
      params.require(:in_playlist).permit(:song_id, :playlist_id)
    end
end
