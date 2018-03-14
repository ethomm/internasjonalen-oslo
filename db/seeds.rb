User.create!(	name: 'Eirik Thommessen',
				email: 'eirik@reelmedianordic.com',
				password: 'termin8Er',
				password_confirmation: 'termin8Er')

puts "=================================================="

puts "1 User was created"

Omoss.create!(title: 'Om Internasjonalen', ingress:"ingress tekst", body: "Mer tekst her")

puts "=================================================="

puts "Om oss was created"

Globalsetting.create!(	mandag: true, 
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
                        slogan: 'In dog we trust!',
  											telefonnr: '22222222',)

puts "=================================================="

puts "Globals settings was created"


Contactperson.create!(name: "Eirik", email: "Eirik@meetprod.no", telefon: "99598827")
Contactperson.create!(name: "Laura", email: "laura@meetprod.no", telefon: "99598827")
Contactperson.create!(name: "Thomas", email: "thomas@meetprod.no", telefon: "99598827")
Contactperson.create!(name: "Wilima", email: "Wilima@meetprod.no", telefon: "99598827")
Contactperson.create!(name: "Mickey", email: "Mickey@meetprod.no", telefon: "99598827")

puts "=================================================="

puts "5 Contactpersons was created"

Role.create!(title: "Dagligleder", stilling: 1, globalsetting_id: 1)
Role.create!(title: "Booking ansvalig", stilling: 2, globalsetting_id: 1)
Role.create!(title: "Teknisk ansvalig", stilling: 3, globalsetting_id: 1)

puts "=================================================="

puts "Roles created"



