class PlaylistCalificationsController < ApplicationController
  before_action :set_playlist_calification, only: [:show, :edit, :update, :destroy]

  # GET /playlist_califications
  # GET /playlist_califications.json
  def index
    @playlist_califications = PlaylistCalification.all
  end

  # GET /playlist_califications/1
  # GET /playlist_califications/1.json
  def show
  end

  # GET /playlist_califications/new
  def new
    @playlist_calification = PlaylistCalification.new
  end

  # GET /playlist_califications/1/edit
  def edit
  end

  # POST /playlist_califications
  # POST /playlist_califications.json
  def create
    @playlist_calification = PlaylistCalification.new(playlist_calification_params)

    respond_to do |format|
      if @playlist_calification.save
        format.html { redirect_to playlist_url(@playlist_calification.playlist_id), notice: 'Playlist calification was successfully created.' }
        format.json { render :show, status: :created, location: @playlist_calification }
      else
        format.html { render :new }
        format.json { render json: @playlist_calification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playlist_califications/1
  # PATCH/PUT /playlist_califications/1.json
  def update
    respond_to do |format|
      if @playlist_calification.update(playlist_calification_params)
        format.html { redirect_to playlist_url(@playlist_calification.playlist_id), notice: 'Playlist calification was successfully updated.' }
        format.json { render :show, status: :ok, location: @playlist_calification }
      else
        format.html { render :edit }
        format.json { render json: @playlist_calification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playlist_califications/1
  # DELETE /playlist_califications/1.json
  def destroy
    @playlist_calification.destroy
    respond_to do |format|
      format.html { redirect_to playlist_califications_url, notice: 'Playlist calification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlist_calification
      @playlist_calification = PlaylistCalification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def playlist_calification_params
      params.require(:playlist_calification).permit(:playlist_id, :user_id, :grade)
    end
end
