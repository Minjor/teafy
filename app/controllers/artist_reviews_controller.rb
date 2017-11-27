class ArtistReviewsController < ApplicationController
  before_action :set_artist_review, only: [:show, :edit, :update, :destroy]

  # GET /artist_reviews
  # GET /artist_reviews.json
  def index
    @artist_reviews = ArtistReview.all
  end

  # GET /artist_reviews/1
  # GET /artist_reviews/1.json
  def show
  end

  # GET /artist_reviews/new
  def new
    @artist_review = ArtistReview.new
  end

  # GET /artist_reviews/1/edit
  def edit
  end

  # POST /artist_reviews
  # POST /artist_reviews.json
  def create
    @artist_review = ArtistReview.new(artist_review_params)

    respond_to do |format|
      if @artist_review.save
        format.html { redirect_to artist_url(@artist_review.artist_id), notice: 'Artist review was successfully created.' }
        format.json { render :show, status: :created, location: @artist_review }
      else
        format.html { render :new }
        format.json { render json: @artist_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artist_reviews/1
  # PATCH/PUT /artist_reviews/1.json
  def update
    respond_to do |format|
      if @artist_review.update(artist_review_params)
        format.html { redirect_to @artist_review, notice: 'Artist review was successfully updated.' }
        format.json { render :show, status: :ok, location: @artist_review }
      else
        format.html { render :edit }
        format.json { render json: @artist_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artist_reviews/1
  # DELETE /artist_reviews/1.json
  def destroy
    @artist_review.destroy
    respond_to do |format|
      format.html { redirect_to artist_reviews_url, notice: 'Artist review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist_review
      @artist_review = ArtistReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artist_review_params
      params.require(:artist_review).permit(:artist_id, :user_id, :review)
    end
end
