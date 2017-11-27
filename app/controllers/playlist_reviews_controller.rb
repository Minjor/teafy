class PlaylistReviewsController < ApplicationController
  before_action :set_playlist_review, only: [:show, :edit, :update, :destroy]

  # GET /playlist_reviews
  # GET /playlist_reviews.json
  def index
    @playlist_reviews = PlaylistReview.all
  end

  # GET /playlist_reviews/1
  # GET /playlist_reviews/1.json
  def show
  end

  # GET /playlist_reviews/new
  def new
    @playlist_review = PlaylistReview.new
  end

  # GET /playlist_reviews/1/edit
  def edit
  end

  # POST /playlist_reviews
  # POST /playlist_reviews.json
  def create
    @playlist_review = PlaylistReview.new(playlist_review_params)

    respond_to do |format|
      if @playlist_review.save
        format.html { redirect_to playlist_url(@playlist_review.playlist_id), notice: 'Playlist review was successfully created.' }
        format.json { render :show, status: :created, location: @playlist_review }
      else
        format.html { render :new }
        format.json { render json: @playlist_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /playlist_reviews/1
  # PATCH/PUT /playlist_reviews/1.json
  def update
    respond_to do |format|
      if @playlist_review.update(playlist_review_params)
        format.html { redirect_to @playlist_review, notice: 'Playlist review was successfully updated.' }
        format.json { render :show, status: :ok, location: @playlist_review }
      else
        format.html { render :edit }
        format.json { render json: @playlist_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /playlist_reviews/1
  # DELETE /playlist_reviews/1.json
  def destroy
    @playlist_review.destroy
    respond_to do |format|
      format.html { redirect_to playlist_reviews_url, notice: 'Playlist review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlist_review
      @playlist_review = PlaylistReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def playlist_review_params
      params.require(:playlist_review).permit(:playlist_id, :user_id, :review)
    end
end
