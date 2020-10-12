class ReferencesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_reference, only: [:show, :update, :destroy]

  # GET /references
  def index
    @references = Reference.all

    render json: @references
  end

  # GET /references/1
  def show
    render json: @reference
  end

  # POST /references
  def create
    @reference = Reference.new(dialect_id: reference_params[:dialect_id])
    @reference.source = reference_params[:source]
    @reference.volume_book = reference_params[:volume_book]
    @reference.line_verse = reference_params[:line_verse]
    @reference.text_excerpt = reference_params[:text_excerpt]
    @reference.translation = reference_params[:translation]
    @reference.notes = reference_params[:notes]
    @reference.greek_equivalent = reference_params[:greek_equivalent]

    @meaning = Meaning.find(reference_params[:meaning_id])
    if @reference.save
      MeaningReference.create(meaning_id: reference_params[:meaning_id], reference_id: @reference.id)
      redirect_to @meaning
      #render json: @reference, status: :created, location: @reference
    else
      render :show_meaning
      #render json: @reference.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /references/1
  def update
    if @reference.update(reference_params)
      render json: @reference
    else
      render json: @reference.errors, status: :unprocessable_entity
    end
  end

  # DELETE /references/1
  def destroy
    @reference.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reference
      @reference = Reference.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reference_params
      params.require(:reference).permit(:source, :volume_book, :line_verse, :text_excerpt, :translation, :notes, :greek_equivalent, :meaning_id, :dialect_id)
    end
end
