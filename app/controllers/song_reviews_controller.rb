class SongReviewsController < ApplicationController
  before_action :set_song_review, only: [:show, :edit, :update, :destroy]

  # GET /song_reviews
  # GET /song_reviews.json
  def index
    @song_reviews = SongReview.all
  end

  # GET /song_reviews/1
  # GET /song_reviews/1.json
  def show
  end

  # GET /song_reviews/new
  def new
    @song_review = SongReview.new
  end

  # GET /song_reviews/1/edit
  def edit
  end

  # POST /song_reviews
  # POST /song_reviews.json
  def create
    @song_review = SongReview.new(song_review_params)

    respond_to do |format|
      if @song_review.save
        format.html { redirect_to song_url(@song_review.song_id), notice: 'Song review was successfully created.' }
        format.json { render :show, status: :created, location: @song_review }
      else
        format.html { render :new }
        format.json { render json: @song_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /song_reviews/1
  # PATCH/PUT /song_reviews/1.json
  def update
    respond_to do |format|
      if @song_review.update(song_review_params)
        format.html { redirect_to @song_review, notice: 'Song review was successfully updated.' }
        format.json { render :show, status: :ok, location: @song_review }
      else
        format.html { render :edit }
        format.json { render json: @song_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /song_reviews/1
  # DELETE /song_reviews/1.json
  def destroy
    @song_review.destroy
    respond_to do |format|
      format.html { redirect_to song_reviews_url, notice: 'Song review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song_review
      @song_review = SongReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def song_review_params
      params.require(:song_review).permit(:user_id, :song_id, :review)
    end
end
