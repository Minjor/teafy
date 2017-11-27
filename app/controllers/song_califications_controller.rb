class SongCalificationsController < ApplicationController
  before_action :set_song_calification, only: [:show, :edit, :update, :destroy]

  # GET /song_califications
  # GET /song_califications.json
  def index
    @song_califications = SongCalification.all
  end

  # GET /song_califications/1
  # GET /song_califications/1.json
  def show
  end

  # GET /song_califications/new
  def new
    @song_calification = SongCalification.new
  end

  # GET /song_califications/1/edit
  def edit
  end

  # POST /song_califications
  # POST /song_califications.json
  def create
    @song_calification = SongCalification.new(song_calification_params)

    respond_to do |format|
      if @song_calification.save
        format.html { redirect_to song_url(@song_calification.song_id), notice: 'Song calification was successfully created.' }
        format.json { render :show, status: :created, location: @song_calification }
      else
        format.html { render :new }
        format.json { render json: @song_calification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /song_califications/1
  # PATCH/PUT /song_califications/1.json
  def update
    respond_to do |format|
      if @song_calification.update(song_calification_params)
        format.html { redirect_to song_url(@song_calification.song_id), notice: 'Song calification was successfully updated.' }
        format.json { render :show, status: :ok, location: @song_calification }
      else
        format.html { render :edit }
        format.json { render json: @song_calification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /song_califications/1
  # DELETE /song_califications/1.json
  def destroy
    @song_calification.destroy
    respond_to do |format|
      format.html { redirect_to song_califications_url, notice: 'Song calification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song_calification
      @song_calification = SongCalification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_calification_params
      params.require(:song_calification).permit(:user_id, :song_id, :grade)
    end
end
