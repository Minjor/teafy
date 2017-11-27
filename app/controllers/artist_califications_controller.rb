class ArtistCalificationsController < ApplicationController
  before_action :set_artist_calification, only: [:show, :edit, :update, :destroy]

  # GET /artist_califications
  # GET /artist_califications.json
  def index
    @artist_califications = ArtistCalification.all
  end

  # GET /artist_califications/1
  # GET /artist_califications/1.json
  def show
  end

  # GET /artist_califications/new
  def new
    @artist_calification = ArtistCalification.new
  end

  # GET /artist_califications/1/edit
  def edit
  end

  # POST /artist_califications
  # POST /artist_califications.json
  def create
    @artist_calification = ArtistCalification.new(artist_calification_params)

    respond_to do |format|
      if @artist_calification.save
        format.html { redirect_to artist_url(@artist_calification.artist_id), notice: 'Artist calification was successfully created.' }
        format.json { render :show, status: :created, location: @artist_calification }
      else
        format.html { render :new }
        format.json { render json: @artist_calification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artist_califications/1
  # PATCH/PUT /artist_califications/1.json
  def update
    respond_to do |format|
      if @artist_calification.update(artist_calification_params)
        format.html { redirect_to artist_url(@artist_calification.artist_id), notice: 'Artist calification was successfully updated.' }
        format.json { render :show, status: :ok, location: @artist_calification }
      else
        format.html { render :edit }
        format.json { render json: @artist_calification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artist_califications/1
  # DELETE /artist_califications/1.json
  def destroy
    @artist_calification.destroy
    respond_to do |format|
      format.html { redirect_to artist_califications_url, notice: 'Artist calification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist_calification
      @artist_calification = ArtistCalification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artist_calification_params
      params.require(:artist_calification).permit(:artist_id, :user_id, :grade)
    end
end
