class BarsController < ApplicationController
  before_action :authenticate_user, except: [:show]
  before_action :set_bar, only: [:edit, :update, :destroy]
  before_action :find_bar, only: [:show]

  # GET /bars
  # GET /bars.json
  def index
    @bars = Bar.all
    render layout: 'admin'
  end

  # GET /bars/1
  # GET /bars/1.json
  def show
  end

  # GET /bars/new
  def new
    @bar = Bar.new
    render layout: 'admin'
  end

  # GET /bars/1/edit
  def edit
    render layout: 'admin'
  end

  # POST /bars
  # POST /bars.json
  def create
    @bar = Bar.new(bar_params)
      if @bar.save
        redirect_to bars_path, notice: 'Bar was successfully created.'
      else
        redirect_to bars_path, notice: 'Tit Fuck! Noe shit skjedde. Sorry'
      end
  end

  # PATCH/PUT /bars/1
  # PATCH/PUT /bars/1.json
  def update
      if @bar.update(bar_params)
        redirect_to bars_path, notice: 'Bar was successfully updated.'
      else
        redirect_to bars_path, notice: 'Tit Fuck! Noe shit skjedde. Sorry'
      end
  end

  # DELETE /bars/1
  # DELETE /bars/1.json
  def destroy
    @bar.destroy
     redirect_to bars_url, notice: 'Da har baren kympet med en etasje.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar
      @bar = Bar.find(params[:id])
    end

    def find_bar
      @setting = Globalsetting.first
      @bar = Bar.find_by_slug(params[:id])
      @categories = Category.all
      @bookings = Booking.all
      @about = Omoss.first
      @bars = Bar.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bar_params
      params.require(:bar).permit(:title, :body)
    end
end
