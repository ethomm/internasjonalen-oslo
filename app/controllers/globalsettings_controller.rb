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
      if @globalsetting.update(globalsetting_params)
        @globalsetting.contactperson_id = params[:contactperson_id]
        puts 'Dette er greiea' + params[:contactperson_id].to_s
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
                                            :contactperson_id)
    end
end
