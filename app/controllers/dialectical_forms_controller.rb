class DialecticalFormsController < ApplicationController
  #delete this skip_before_action after developing db in rails
  skip_before_action :verify_authenticity_token
  before_action :set_dialectical_form, only: [:show, :update, :destroy]

  # GET /dialectical_forms
  def index
    @dialectical_forms = DialecticalForm.all

    render json: @dialectical_forms
  end

  # GET /dialectical_forms/1
  def show
    render json: @dialectical_form
  end

  # POST /dialectical_forms
  def create
    binding.pry
    @dialectical_form = DialecticalForm.new(dialectical_form_params)
    @entry = Entry.find(params[:dialectical_form][:entry_id])
    if @entry.save
      render :step_two
    else
      render :welcome
    end

    # if @dialectical_form.save
    #   render json: @dialectical_form, status: :created, location: @dialectical_form
    # else
    #   render json: @dialectical_form.errors, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /dialectical_forms/1
  def update
    if @dialectical_form.update(dialectical_form_params)
      render json: @dialectical_form
    else
      render json: @dialectical_form.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dialectical_forms/1
  def destroy
    @dialectical_form.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dialectical_form
      @dialectical_form = DialecticalForm.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dialectical_form_params
      params.require(:dialectical_form).permit(:lexeme, :dialect_id, :entry_id, :add_dialect)
    end
end
