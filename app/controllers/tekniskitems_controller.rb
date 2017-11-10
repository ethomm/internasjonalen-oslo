class TekniskitemsController < ApplicationController
  before_action :authenticate_user
  before_action :set_tekniskitem, only: [:show, :edit, :update, :destroy]
  layout 'admin'

  # GET /tekniskitems/1/edit
  def edit
  end

  # POST /tekniskitems
  # POST /tekniskitems.json
  def create
    @tekniskitem = Tekniskitem.new(tekniskitem_params)
      if @tekniskitem.save
        redirect_to tekniskcategories_path , notice: 'Dingsen er lagt til.' 
      else

      end
  end

  # PATCH/PUT /tekniskitems/1
  # PATCH/PUT /tekniskitems/1.json
  def update
      if @tekniskitem.update(tekniskitem_params)
        redirect_to tekniskcategories_path , notice: 'Dingsen er oppdatert.' 
      else

      end
  end

  # DELETE /tekniskitems/1
  # DELETE /tekniskitems/1.json
  def destroy
    @tekniskitem.destroy
      redirect_to tekniskcategories_path , notice: 'Tøffe person som letta denna dingsen.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tekniskitem
      @tekniskitem = Tekniskitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tekniskitem_params
      params.require(:tekniskitem).permit(:title, :antall, :tekniskcategory_id, :status)
    end
end
