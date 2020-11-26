class EntriesController < ApplicationController
  #delete this skip_before_action after developing db in rails
  skip_before_action :verify_authenticity_token
  #before_action :set_entry, only: [:show, :update, :destroy]

  # GET /entries
  def index
    @entries = Entry.all

    render json: @entries
  end

  # GET /entries/1
  def show
    @entry = Entry.find(params[:id])
    @meaning = Meaning.new(entry_id: @entry.id)
    @dialectical_form = DialecticalForm.new
    render :show_entry
    #render json: @entry
  end

  # NEW /entries
  def new
    @entry = Entry.new
    @chapters = Chapter.all
    #this view can be deleted after development
    render :new
  end

  # POST /entries
  def create
    @entry = Entry.new(chapter_id: entry_params[:chapter_id], starting_page: entry_params[:starting_page], lemma: entry_params[:lemma], pos: entry_params[:pos], head: entry_params[:head])

    if entry_params[:entries] != ""
      #cross_reference = Entry.find_by(lemma: entry_params[:entries])
      binding.pry
      @entry.entries = [cross_reference]
    end

    if @entry.save
      @dialectical_form = DialecticalForm.new
      binding.pry
      render :step_two
    else
      render :welcome
    end
    # if @entry.save
    #   render json: @entry, status: :created, location: @entry
    # else
    #   render json: @entry.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /entries/1
  def update
    if @entry.update(entry_params)
      render json: @entry
    else
      render json: @entry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /entries/1
  def destroy
    @entry.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def entry_params
      params.require(:entry).permit(:id, :chapter_id, :starting_page, :lemma, :pos, :completed, :head_id)
    end
end
