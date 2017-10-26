class AdministratorController < ApplicationController
	before_action :authenticate_user
	layout 'admin'
  	def index
  		@about = Omoss.first_or_create do |about|
  			@about = Omoss.create(title: 'Om Internasjonalen', ingress:"ingress tekst", body: "Mer tekst her")
  		end
  	end
end
