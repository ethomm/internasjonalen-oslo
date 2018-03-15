class RolesController < ApplicationController
  before_action :authenticate_user
  before_action :set_role, only: [:update]

  def update
    @id = params[:role][:contactperson_id]
    @roleid = params[:id]
    case @id
    # If the role is sett to none/ingen  
    when "0"
      @oldRoleOwner = Contactperson.where(stilling: @role.id);
      if !@oldRoleOwner.first.nil?
        @oldRoleOwner.first.stilling = 0
        @oldRoleOwner.first.save!
        @role.contactperson_id = nil
        @role.save!
      else
        @role.contactperson_id = nil
        @role.save
      end
    else
      update_contactpersons
    end
    redirect_to administrator_kontaktinfo_path
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

    def ingen_gammel_rolle(contact, id)
      contact.stilling = @role.id
      contact.save!
    end

    def gammel_og_ny(nycontact, gammelcontact, id)
      nycontact.stilling = Integer(id)
      nycontact.save!
      gammelcontact.first.stilling = 0
      gammelcontact.first.save!
    end

    def updatating
      if @role.update(role_params)  
        flash.now[:alert] = "Der var det gjort!"
        #redirect_to administrator_kontaktinfo_path
      else
        flas.now[:alert] = "Noe gikk skikkelig galt"
        redirect_to administrator_path
     end
    end

    def updating_nil
      @role.contactperson_id = nil
      if @role.update  
      flash.now[:alert] = "Der var det gjort!"
      redirect_to administrator_kontaktinfo_path
    else
      flas.now[:alert] = "Noe gikk skikkelig galt"
      redirect_to administrator_path
    end
    end

    def update_contactpersons
      oldRoleOwner = Contactperson.where(stilling: Integer(@role.id))
      newRoleOwner = Contactperson.find(params[:role][:contactperson_id])
    # If there is no users assigned to the old role
      if oldRoleOwner.first.nil? 
        ingen_gammel_rolle(newRoleOwner, @role.id )
        updatating
    # If the change of roles is between to different persons
      elsif newRoleOwner.id != oldRoleOwner.first.id
        gammel_og_ny(newRoleOwner, oldRoleOwner, @role.id)
        updatating
      else
    # Do nothing if nothing is changing
      end
    end
end
