class PagesController < ApplicationController
	before_action :set_setting
  	def home

 	end

  	def about
  		@about = Omoss.first_or_create do |about|
  			@about = Omoss.create(title: 'Om Internasjonalen', ingress:"ingress tekst", body: "Mer tekst her")
  		end
  	end
  	private	
  		def set_setting
  			@setting = Globalsetting.first_or_create do |setting|
  				@setting = Globalsetting.create(	mandag: true, 
  											tirsdag: true, 
  											onsdag: true, 
  											torsdag: true, 
  											fredag: true, 
  											lørdag: true, 
  											søndag: true, 
  											mandaghour: 12, 
  											mandagminute: 00, 
  											tirsdaghour: 12, 
  											tirsdagminute: 00, 
  											onsdaghour: 12, 
  											onsdagminute: 00, 
  											torsdaghour: 12, 
  											torsdagminute: 00, 
  											fredaghour: 12, 
  											fredagminute: 00, 
  											lørdaghour: 12, 
  											lørdagminute: 00, 
  											søndaghour: 12, 
  											søndagminute: 00,
  											mandagclosinghour: 03, 
  											mandagclosingminute: 00, 
  											tirsdagclosinghour: 03, 
  											tirsdagclosingminute: 00, 
  											onsdagclosinghour: 03, 
  											onsdagclosingminute: 00, 
  											torsdagclosinghour: 03, 
  											torsdagclosingminute: 00, 
  											fredagclosinghour: 03, 
  											fredagclosingminute: 00, 
  											lørdagclosinghour: 03, 
  											søndagclosinghour: 03, 
  											søndagclosingminute: 00,
  											aldersgrense: 24,
  											adresse: 'Gatenavn',
  											postnr: '0181',
  											poststed: 'Oslo',
  											epost: 'post@internasjonalen.no',
  											telefonnr: '22222222')
  						end
  		end
end
