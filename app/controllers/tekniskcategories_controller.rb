class TekniskcategoriesController < ApplicationController
  before_action :authenticate_user
  before_action :set_tekniskcategory, only: [:show, :edit, :update, :destroy]
  layout 'admin'
  # GET /tekniskcategories
  # GET /tekniskcategories.json
  def index
    @tekniskcategories = Tekniskcategory.all.eager_load(:tekniskitems)
    @nyteknisk = Tekniskcategory.new
    @nyitem = Tekniskitem.new
    @contactpeople = Contactperson.all
    @role = Role.find(3)
  end

  # GET /tekniskcategories/1/edit
  def edit
  end

  # POST /tekniskcategories
  # POST /tekniskcategories.json
  def create
    @tekniskcategory = Tekniskcategory.new(tekniskcategory_params)
      if @tekniskcategory.save
        redirect_to tekniskcategories_path , notice: 'Teknisk kategory ble opprettet' 
      else
        redirect_to tekniskcategories_path , notice: 'Desverre gikk ikke dette helt etter planen...'
      end
  end

  # PATCH/PUT /tekniskcategories/1
  # PATCH/PUT /tekniskcategories/1.json
  def update
      if @tekniskcategory.update(tekniskcategory_params)
        redirect_to tekniskcategories_path, notice: 'Teknisk kategory ble oppdatert' 
      else
        
      end
  end

  # DELETE /tekniskcategories/1
  # DELETE /tekniskcategories/1.json
  def destroy
    @tekniskcategory.destroy
      redirect_to tekniskcategories_path , notice: 'Dæven! Der var den sletta'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tekniskcategory
      @tekniskcategory = Tekniskcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tekniskcategory_params
      params.require(:tekniskcategory).permit(:title)
    end
end
