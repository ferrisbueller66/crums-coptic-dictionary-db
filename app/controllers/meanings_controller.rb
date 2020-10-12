class MeaningsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_meaning, only: [:show, :update, :destroy]

  # GET /meanings
  # def index
  #   @meanings = Meaning.all

  #   render json: @meanings
  # end

  # GET /meanings/1
  def show
    @reference = Reference.new
    render :show_meaning
    #render json: @meaning
  end

  # POST /meanings
  def create
    
    @entry = Entry.find(meaning_params[:entry_id])
    @meaning = Meaning.new(meaning_params)
    if @meaning.save
      redirect_to @meaning
      #render json: @meaning, status: :created, location: @meaning
    else
      #render json: @meaning.errors, status: :unprocessable_entity
      redirect_to @entry
    end
  end

  # PATCH/PUT /meanings/1
  def update
    if @meaning.update(meaning_params)
      render json: @meaning
    else
      render json: @meaning.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meanings/1
  def destroy
    @meaning.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meaning
      @meaning = Meaning.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def meaning_params
      params.require(:meaning).permit(:lexical_entry, :translation_value, :entry_id)
    end
end
