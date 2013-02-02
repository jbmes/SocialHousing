class BasketController < ApplicationController
  
    
  def show_entrys
    
    
    @results_entrys_in_basket = ActiveRecord::Base.connection.select_all( "SELECT * FROM basket" )
      query_strg = "accommodation_unitrail_id in (#{@results_entrys_in_basket})"
      @accommodation_unitrail = AccommodationUnitrail.where('id in (?)',@results_entrys_in_basket)
      @results_amount = @accommodation_unitrail.size

    render :template=>  'basket/basket_overview'
  end
  
end