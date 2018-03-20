class ContactpeopleController < ApplicationController
  before_action :authenticate_user
  before_action :set_contactperson, only: [:show, :edit, :update, :destroy]
  layout 'admin'

  # GET /contactpeople/new
  def new
    @contactperson = Contactperson.new
  end

  # GET /contactpeople/1/edit
  def edit
  end

  # POST /contactpeople
  # POST /contactpeople.json
  def create
    @contactperson = Contactperson.new(contactperson_params)
      if @contactperson.save
        redirect_to administrator_kontaktinfo_path, notice: 'Kontaktperson ble opprettet' 
      else
        redirect_to administrator_kontaktinfo_path, notice: 'Husk å ha en ordentlig epost adresse og et ekte navn'
      end
  end

  # PATCH/PUT /contactpeople/1
  # PATCH/PUT /contactpeople/1.json
  def update
      if @contactperson.update(contactperson_params)
        redirect_to administrator_kontaktinfo_path, notice: 'Kontaktperson ble oppdatert'
      else
        redirect_to administrator_kontaktinfo_path, notice: 'Noe gikk galt... Er du sikker på at du har fylt inn riktig informasjon... Og all informasjon?' 
        puts @contactperson.errors.full_messages
      end
  end

  # DELETE /contactpeople/1
  # DELETE /contactpeople/1.json
  def destroy
    @contactperson.destroy
    redirect_to administrator_kontaktinfo_path, notice: '#{@contactperson.name} ble oppdatert'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contactperson
      @contactperson = Contactperson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contactperson_params
      params.require(:contactperson).permit(:name, :email, :telefon, :showtelefon, :role)
    end
end
