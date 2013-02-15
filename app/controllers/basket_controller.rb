class BasketController < ApplicationController
  
    
  def show_entrys
    accomodation_unitrails = []
    ActiveRecord::Base.connection.execute( "SELECT * FROM basket" ) .each do |accomodation_id|
        accomodation_unitrails << accomodation_id[0]
     end   
     @results = AccommodationUnitrail.where('id in (?)',accomodation_unitrails)
     @results_amount = @results.size
     render :template=>  'basket/basket_overview'
  end
  
end