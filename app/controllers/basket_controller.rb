class BasketController < ApplicationController
  
    
  def show_entrys
    accomodation_unitrails = []
    ActiveRecord::Base.connection.execute( "SELECT * FROM basket" ) .each do |accomodation_id|
        accomodation_unitrails << accomodation_id[0]
     end   
     @results = AccommodationUnitrail.where('id in (?)',accomodation_unitrails)
     @in_basket = ActiveRecord::Base.connection.select_values( "SELECT accommodation_unitrail_id FROM basket" )
     @results_amount = @results.size
     render :template=>  'basket/basket_overview'
  end



  def change_sorting_of_results
    accomodation_unitrails = []
    ActiveRecord::Base.connection.execute( "SELECT * FROM basket" ) .each do |accomodation_id|
      accomodation_unitrails << accomodation_id[0]
    end

    if Rails.cache.read("order_basket") == 0
      @results = AccommodationUnitrail.where('id in (?)',accomodation_unitrails).order("distance")
      Rails.cache.write("order_basket", 1)
    else
      @results = AccommodationUnitrail.where('id in (?)',accomodation_unitrails).order("distance").reverse
      Rails.cache.write("order_basket", 0)
    end
    @in_basket = ActiveRecord::Base.connection.select_values( "SELECT accommodation_unitrail_id FROM basket" )
    @tmp_query = params[:tmp_query]
    @results_amount = @results.size
    render :template => 'basket/basket_overview'
  end

  def insert

    results_entrys_in_basket = ActiveRecord::Base.connection.select_all( "SELECT * FROM basket where accommodation_unitrail_id = '#{params[:accomodation_idc]}'" )
    if results_entrys_in_basket.size == 0
      ActiveRecord::Base.connection.execute("INSERT INTO basket VALUES('#{params[:accomodation_idc]}','#{params[:accomodation_idc]}')")

    end
    @in_basket = ActiveRecord::Base.connection.select_values( "SELECT accommodation_unitrail_id FROM basket" )
    accomodation_unitrails = []
    ActiveRecord::Base.connection.execute( "SELECT * FROM basket" ) .each do |accomodation_id|
      accomodation_unitrails << accomodation_id[0]
    end
    @results = AccommodationUnitrail.where('id in (?)',accomodation_unitrails)
    @results_amount = @results.size
    render :template=>  'basket/basket_overview'

  end

  def remove
    results_entrys_in_basket = ActiveRecord::Base.connection.select_all( "SELECT * FROM basket where accommodation_unitrail_id = '#{params[:accomodation_idc]}'" )
    if results_entrys_in_basket.size > 0
      ActiveRecord::Base.connection.execute("DELETE FROM basket WHERE accommodation_unitrail_id = '#{params[:accomodation_idc]}'")
    end
    @in_basket = ActiveRecord::Base.connection.select_values( "SELECT accommodation_unitrail_id FROM basket" )
    accomodation_unitrails = []
    ActiveRecord::Base.connection.execute( "SELECT * FROM basket" ) .each do |accomodation_id|
      accomodation_unitrails << accomodation_id[0]
    end
    @results = AccommodationUnitrail.where('id in (?)',accomodation_unitrails)
    @results_amount = @results.size
    render :template=>  'basket/basket_overview'

  end
  
end