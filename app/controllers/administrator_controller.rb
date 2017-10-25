class AdministratorController < ApplicationController

  def index
  	@about = Omoss.first_or_create do |about|
  		@about = Omoss.create(title: 'Om Internasjonalen', ingress:"ingress tekst", body: "Mer tekst her")
  	end
  end
end
