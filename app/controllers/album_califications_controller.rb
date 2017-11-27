class AlbumCalificationsController < ApplicationController
  before_action :set_album_calification, only: [:show, :edit, :update, :destroy]

  # GET /album_califications
  # GET /album_califications.json
  def index
    @album_califications = AlbumCalification.all
  end

  # GET /album_califications/1
  # GET /album_califications/1.json
  def show
  end

  # GET /album_califications/new
  def new
    @album_calification = AlbumCalification.new
  end

  # GET /album_califications/1/edit
  def edit
  end

  # POST /album_califications
  # POST /album_califications.json
  def create
    @album_calification = AlbumCalification.new(album_calification_params)

    respond_to do |format|
      if @album_calification.save
        format.html { redirect_to album_url(@album_calification.album_id), notice: 'Album calification was successfully created.' }
        format.json { render :show, status: :created, location: @album_calification }
      else
        format.html { render :new }
        format.json { render json: @album_calification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /album_califications/1
  # PATCH/PUT /album_califications/1.json
  def update
    respond_to do |format|
      if @album_calification.update(album_calification_params)
        format.html { redirect_to album_url(@album_calification.album_id), notice: 'Album calification was successfully updated.' }
        format.json { render :show, status: :ok, location: @album_calification }
      else
        format.html { render :edit }
        format.json { render json: @album_calification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /album_califications/1
  # DELETE /album_califications/1.json
  def destroy
    @album_calification.destroy
    respond_to do |format|
      format.html { redirect_to album_califications_url, notice: 'Album calification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album_calification
      @album_calification = AlbumCalification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def album_calification_params
      params.require(:album_calification).permit(:album_id, :user_id)
    end
end
