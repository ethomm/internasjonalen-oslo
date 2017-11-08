class UtleietypesController < ApplicationController
  before_action :set_utleietype, only: [:show, :edit, :update, :destroy]

  # GET /utleietypes
  # GET /utleietypes.json
  def index
    @utleietypes = Utleietype.all
  end

  # GET /utleietypes/1
  # GET /utleietypes/1.json
  def show
  end

  # GET /utleietypes/new
  def new
    @utleietype = Utleietype.new
  end

  # GET /utleietypes/1/edit
  def edit
  end

  # POST /utleietypes
  # POST /utleietypes.json
  def create
    @utleietype = Utleietype.new(utleietype_params)

    respond_to do |format|
      if @utleietype.save
        format.html { redirect_to @utleietype, notice: 'Utleietype was successfully created.' }
        format.json { render :show, status: :created, location: @utleietype }
      else
        format.html { render :new }
        format.json { render json: @utleietype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /utleietypes/1
  # PATCH/PUT /utleietypes/1.json
  def update
    respond_to do |format|
      if @utleietype.update(utleietype_params)
        format.html { redirect_to @utleietype, notice: 'Utleietype was successfully updated.' }
        format.json { render :show, status: :ok, location: @utleietype }
      else
        format.html { render :edit }
        format.json { render json: @utleietype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utleietypes/1
  # DELETE /utleietypes/1.json
  def destroy
    @utleietype.destroy
    respond_to do |format|
      format.html { redirect_to utleietypes_url, notice: 'Utleietype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utleietype
      @utleietype = Utleietype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def utleietype_params
      params.require(:utleietype).permit(:title)
    end
end
