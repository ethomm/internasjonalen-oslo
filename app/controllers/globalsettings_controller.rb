class GlobalsettingsController < ApplicationController
  before_action :authenticate_user
  before_action :set_globalsetting, only: [:update,]

  # PATCH/PUT /globalsettings/1
  # PATCH/PUT /globalsettings/1.json
  def update
      if @globalsetting.update(globalsetting_params)
        redirect_to administrator_path, notice: 'Oppdatert' 
      else
        redirect_to administrator_path, notice: 'Ups! Der skjedde det noe galt'
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
                                            :lørdagclosingminute, 
                                            :søndagclosinghour, 
                                            :søndagclosingminute,
                                            :aldersgrense,
                                            :adresse,
                                            :postnr,
                                            :poststed,
                                            :epost,
                                            :telefonnr,
                                            :leder_id,
                                            :teknisk_id,
                                            :booking_id)
    end
end
