class RolesController < ApplicationController
  before_action :authenticate_user
  before_action :set_role, only: [:update]


  def update
    @rolle = params[:role][:contactperson_id]
    @oldRoleOwner = Contactperson.where(stilling: @role.id);
    @newRoleOwner = Contactperson.find(@rolle)
    if @oldRoleOwner.first.nil? 
      @newRoleOwner.stilling = @role.id
      @newRoleOwner.save!
    elsif @oldRoleOwner != @newRoleOwner
      @oldRoleOwner.first.stilling = 0
      @oldRoleOwner.first.save!
      @newRoleOwner.stilling = @role.id
      @newRoleOwner.save!      
    end
    if @role.update(role_params)  
      flash.now[:alert] = "Der var det gjort!"
      redirect_to administrator_kontaktinfo_path
    else
      flas.now[:alert] = "Noe gikk skikkelig galt"
      redirect_to administrator_path
    end
  end
  private
    def set_role
      @role = Role.find(params[:id])
    end

    def role_params
      params.require(:role).permit(:contactperson_id)
    end

    def fix_order person
      
    end
end
