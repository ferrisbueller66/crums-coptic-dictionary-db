class DialectsController < ApplicationController
  before_action :set_dialect, only: [:show, :update, :destroy]

  # GET /dialects
  def index
    @dialects = Dialect.all

    render json: @dialects
  end

  # GET /dialects/1
  def show
    render json: @dialect
  end

  # POST /dialects
  def create
    @dialect = Dialect.new(dialect_params)

    if @dialect.save
      render json: @dialect, status: :created, location: @dialect
    else
      render json: @dialect.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dialects/1
  def update
    if @dialect.update(dialect_params)
      render json: @dialect
    else
      render json: @dialect.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dialects/1
  def destroy
    @dialect.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dialect
      @dialect = Dialect.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dialect_params
      params.require(:dialect).permit(:name)
    end
end
