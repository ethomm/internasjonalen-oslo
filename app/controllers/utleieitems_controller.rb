class UtleieitemsController < ApplicationController
  before_action :set_utleieitem, only: [:show, :edit, :update, :destroy]

  # GET /utleieitems
  # GET /utleieitems.json
  def index
    @utleieitems = Utleieitem.all
  end

  # GET /utleieitems/1
  # GET /utleieitems/1.json
  def show
  end

  # GET /utleieitems/new
  def new
    @utleieitem = Utleieitem.new
  end

  # GET /utleieitems/1/edit
  def edit
  end

  # POST /utleieitems
  # POST /utleieitems.json
  def create
    @utleieitem = Utleieitem.new(utleieitem_params)

    respond_to do |format|
      if @utleieitem.save
        format.html { redirect_to @utleieitem, notice: 'Utleieitem was successfully created.' }
        format.json { render :show, status: :created, location: @utleieitem }
      else
        format.html { render :new }
        format.json { render json: @utleieitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /utleieitems/1
  # PATCH/PUT /utleieitems/1.json
  def update
    respond_to do |format|
      if @utleieitem.update(utleieitem_params)
        format.html { redirect_to @utleieitem, notice: 'Utleieitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @utleieitem }
      else
        format.html { render :edit }
        format.json { render json: @utleieitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utleieitems/1
  # DELETE /utleieitems/1.json
  def destroy
    @utleieitem.destroy
    respond_to do |format|
      format.html { redirect_to utleieitems_url, notice: 'Utleieitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utleieitem
      @utleieitem = Utleieitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def utleieitem_params
      params.require(:utleieitem).permit(:antall, :brand, :title, :references)
    end
end
