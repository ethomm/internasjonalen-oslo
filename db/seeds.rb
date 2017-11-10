# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(	name: 'Eirik Thommessen',
				email: 'eirik@reelmedianordic.com',
				password: 'termin8Er',
				password_confirmation: 'termin8Er')

Omoss.create!(title: 'Om Internasjonalen', ingress:"ingress tekst", body: "Mer tekst her")

Globalsetting.create(	mandag: true, 
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