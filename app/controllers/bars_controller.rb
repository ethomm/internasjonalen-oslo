class BarsController < ApplicationController
  before_action :authenticate_user, except: [:show]
  before_action :set_bar, only: [:edit, :update, :destroy, :remove_top_image]
  before_action :find_bar, only: [:show]


  def remove_top_image
    @bar.top_image.remove!
    redirect_to edit_bar_path(@bar), notice: "Toppbildet er fjernet"
  end
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
    @image = Barimage.new
    render layout: 'admin'
  end

  # POST /bars
  # POST /bars.json
  def create
    @bar = Bar.new(bar_params)
      if @bar.save
        redirect_to bars_path, notice: 'Gratulerer med ny bar!'
      else
        render :new, layout: 'admin', notice: 'Husk at en bar må ha et skikkelig navn, Seo Beskrivelse og beskrivelse av etasjen...'
      end
  end

  # PATCH/PUT /bars/1
  # PATCH/PUT /bars/1.json
  def update
      if @bar.update(bar_params)
        redirect_to bars_path, notice: 'Baren er oppdatert'
      else
        redirect_to edit_bar_path(@bar), notice: 'Husk at en bar må ha et skikkelig navn, Seo Beskrivelse og beskrivelse av etasjen...'
      end
  end

  # DELETE /bars/1
  # DELETE /bars/1.json
  def destroy
    @bar.destroy
     redirect_to bars_url, notice: 'Da har baren krympet med en etasje.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar
      @bar = Bar.find(params[:id])
    end

    def find_bar
      @bar = Bar.includes(:barimages).find_by_slug(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bar_params
      params.require(:bar).permit(:title, :body, :seo_description, :top_image)
    end
end
