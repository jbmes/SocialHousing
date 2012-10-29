# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

AccommodationUnitrail.create([{name: 'Villakunterbunt',
                              contact_person: 'Peterson',
                              city: 'Berlin',
                              tel_contact_person: '03643901343',
                              street: 'Bachstrae',
                              house_number: 12,
                              postal_code: 17153,
                              email: 'jb3380@yahoo.de',
                              internetadress: 'http://saxsys.de',
                              description: 'schn hier',
                              winter_suitable: true,
                              distance: 100}])
                              
                    AccommodationUnitrail.create([{name: 'Villakunterbunt',
                              contact_person: 'Peterson',
                              city: 'Berlin',
                              tel_contact_person: '03643901343',
                              street: 'Bachstrae',
                              house_number: 12,
                              postal_code: 17153,
                              email: 'jb3380@yahoo.de',
                              internetadress: 'http://saxsys.de',
                              description: 'schn hier',
                              winter_suitable: false,
                              distance: 300}])
                              
                    AccommodationUnitrail.create([{name: 'Villakunterbunt',
                              contact_person: 'Peterson',
                              city: 'Berlin',
                              tel_contact_person: '03643901343',
                              street: 'Bachstrae',
                              house_number: 12,
                              postal_code: 17153,
                              email: 'jb3380@yahoo.de',
                              internetadress: 'http://saxsys.de',
                              description: 'schn hier',
                              winter_suitable: false,
                              grill_area: true,
                              distance: 700}])
                              
                     AccommodationUnitrail.create([{name: 'Villakunterbunt',
                              contact_person: 'Peterson',
                              city: 'Berlin',
                              tel_contact_person: '03643901343',
                              street: 'Bachstrae',
                              house_number: 12,
                              federal_state: 'Berlin',
                              postal_code: 17153,
                              email: 'jb3380@yahoo.de',
                              internetadress: 'http://saxsys.de',
                              description: 'schn hier',
                              winter_suitable: false,
                              grill_area: true,
                              distance: 700}])
                              
                              
                              Config_Values.create([{name: 'Mecklenburg-Vorpommern',
                                                     topic: 'federal_state',
                                                     value: 'Mecklenburg-Vorpommern'}])
                              Config_Values.create([{name: 'Hessen',
                                                    topic: 'federal_state',
                                                     value: 'Hessen'}])
                              Config_Values.create([{name: 'Hamburg',
                                topic: 'federal_state',
                                                     value: 'Hamburg'}])                            
                              Config_Values.create([{name: 'Bremen',
                                topic: 'federal_state',
                                                     value: 'Bremen'}])
                              Config_Values.create([{name: 'Brandenburg',
                                topic: 'federal_state',
                                                     value: 'Brandenburg'}])
                              Config_Values.create([{name: 'Berlin',
                                topic: 'federal_state',
                                                     value: 'Berlin'}])
                              Config_Values.create([{name: 'Bayern',
                                topic: 'federal_state',
                                                     value: 'Bayern'}])
                              Config_Values.create([{name: "Baden-Württemberg",
                                topic: 'federal_state',
                                                     value: "Baden-Württemberg"}])
                              Config_Values.create([{name: 'Niedersachsen',
                                topic: 'federal_state',
                                                     value: 'Niedersachsen'}])
                              Config_Values.create([{name: 'Nordrhein-Westfalen',
                                topic: 'federal_state',
                                                     value: 'Nordrhein-Westfalen'}])
                              Config_Values.create([{name: 'Sachsen',
                                topic: 'federal_state',
                                                     value: 'Sachsen'}])
                              Config_Values.create([{name: 'Sachsen-Anhalt',
                                topic: 'federal_state',
                                                     value: 'Sachsen-Anhalt'}])
                              Config_Values.create([{name: 'Schleswig-Holstein',
                                topic: 'federal_state',
                                                     value: 'Schleswig-Holstein'}])
                             Config_Values.create([{name: 'Thüringen',
                               topic: 'federal_state',
                                                     value: 'Thüringen'}])
                                                     
             
                     
                     Config_Values.create([{name: 'Hotel',
                               topic: 'house_style',
                                                     value: 'Hotel'}])
                     
                     Config_Values.create([{name: 'Jugendhaus',
                               topic: 'house_style',
                                                     value: 'Jugendhaus'}])
                     
                     Config_Values.create([{name: 'Ferienwohnung',
                               topic: 'house_style',
                                                     value: 'Ferienwohnung'}])
                     
                     Config_Values.create([{name: 'Gruppenhaus',
                               topic: 'house_style',
                                                     value: 'Gruppenhaus'}])
                                                     Config_Values.create([{name: 'Bauernhof',
                               topic: 'house_style',
                                                     value: 'Bauernhof'}])
                                                     Config_Values.create([{name: 'Reiterhof',
                               topic: 'house_style',
                                                     value: 'Reiterhof'}])
                                                     Config_Values.create([{name: 'Zeltplatz',
                               topic: 'house_style',
                                                     value: 'Zeltplatz'}])
                                                     Config_Values.create([{name: 'Pension',
                               topic: 'house_style',
                                                     value: 'Pension'}])
                     
                     

