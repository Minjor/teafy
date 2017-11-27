class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  # GET /songs
  # GET /songs.json
  def index
    @songs = Song.all
    if params[:search]
      @songs = Song.search(params[:search]).order("created_at DESC")
    else
      @songs = Song.all.order("created_at DESC")
    end
  end
  # GET /songs/1
  # GET /songs/1.json
  def show
    Yt.configure do |config|
      config.api_key = 'AIzaSyC9JzNrzyv99S7ldhQeVZykEBYRb9Mffsc'
    @songs = Song.all
    if params[:follow] == 'F'
        User.find(current_user.id).songs << @song
        render action: 'index'
    elsif params[:follow] == 'U'
        User.find(current_user.id).songs.delete(@song)
        render action: 'index'
    end
  end

    videos = Yt::Collections::Videos.new

    id_video = videos.where(q: @song.name + ' ' + @song.artist.name,
          order: 'relevance').first.id

    @url_youtube = '//www.youtube.com/embed/' + id_video

  end

  # GET /songs/new
  def new
    @song = Song.new
  end

  # GET /songs/1/edit
  def edit
  end

  # POST /songs
  # POST /songs.json
  def create
    @song = Song.new(song_params)

    respond_to do |format|
      if @song.save
        format.html { redirect_to @song, notice: 'Song was successfully created.' }
        format.json { render :show, status: :created, location: @song }
      else
        format.html { render :new }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /songs/1
  # PATCH/PUT /songs/1.json
  def update
    respond_to do |format|
      if @song.update(song_params)
        format.html { redirect_to @song, notice: 'Song was successfully updated.' }
        format.json { render :show, status: :ok, location: @song }
      else
        format.html { render :edit }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /songs/1
  # DELETE /songs/1.json
  def destroy
    @song.destroy
    respond_to do |format|
      format.html { redirect_to songs_url, notice: 'Song was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  # POST /songs/follow
    def follow
        User.find(current_user.id).songs << Song.find(params[:id])
        render action: 'index'
    end

  # # POST /songs/unfollow
    def unfollow
        User.find(current_user.id).songs.delete(Song.find(params[:id]))
        render action: 'index'
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song
      @song = Song.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_params
      params.require(:song).permit(:name, :album_id, :artist_id)
    end
end
