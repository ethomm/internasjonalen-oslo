class GlobalsettingsController < ApplicationController
  before_action :set_globalsetting, only: [ :edit, :update,]

  # GET /globalsettings/new
  def new
    @globalsetting = Globalsetting.new
  end

  # GET /globalsettings/1/edit
  def edit
  end

  # PATCH/PUT /globalsettings/1
  # PATCH/PUT /globalsettings/1.json
  def update
    respond_to do |format|
      if @globalsetting.update(globalsetting_params)
        format.html { redirect_to administrator_path, notice: 'Oppdatert' }
      else
        format.html { render :edit }
        format.json { render json: @globalsetting.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_globalsetting
      @globalsetting = Globalsetting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def globalsetting_params
      params.require(:globalsetting).permit(:mandag, 
                                            :tirsdag, 
                                            :onsdag, 
                                            :torsdag, 
                                            :fredag, 
                                            :lørdag, 
                                            :søndag, 
                                            :mandaghour, 
                                            :mandagminute, 
                                            :tirsdaghour, 
                                            :tirsdagminute, 
                                            :onsdaghour, 
                                            :onsdagminute, 
                                            :torsdaghour, 
                                            :torsdagminute, 
                                            :fredaghour, 
                                            :fredagminute, 
                                            :lørdaghour, 
                                            :lørdagminute, 
                                            :søndaghour, 
                                            :søndagminute,
                                            :mandagclosinghour, 
                                            :mandagclosingminute, 
                                            :tirsdagclosinghour, 
                                            :tirsdagclosingminute, 
                                            :onsdagclosinghour, 
                                            :onsdagclosingminute, 
                                            :torsdagclosinghour, 
                                            :torsdagclosingminute, 
                                            :fredagclosinghour, 
                                            :fredagclosingminute, 
                                            :lørdagclosinghour, 
                                            :søndagclosinghour, 
                                            :søndagclosingminute,
                                            :aldersgrense,
                                            :adresse,
                                            :postnr,
                                            :poststed,
                                            :epost,
                                            :telefonnr)
    end
end
