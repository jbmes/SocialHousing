class SearchController < ApplicationController
  #needed for AJAX 
  respond_to :html, :js
  
  

  def find_entrys
    @searchstring = "search"
     @accommodation_unitrail = AccommodationUnitrail.new
  end
  
  def get_data_from_form
    query_strg = ""
    if ! params.has_key?(:tmp_query)
    unless params[:accommodation_unitrail][:distance_to_dresden] == ""
      query_strg =  "#{query_strg}#{"distance"} <= '#{params[:accommodation_unitrail][:distance_to_dresden]}'"
    end
    
     unless params[:accommodation_unitrail][:max_group_size] == ""
       if query_strg != ""
          query_strg = "#{query_strg} AND "
        end
      query_strg =  "#{query_strg}#{"max_group_size"} <= '#{params[:accommodation_unitrail][:max_group_size]}'"
    end
    
    unless params[:accommodation_unitrail][:amount_of_lebenshilfe_stars] == ""
       if query_strg != ""
          query_strg = "#{query_strg} AND "
        end
      query_strg =  "#{query_strg}#{"amount_of_lebenshilfe_stars"} == '#{params[:accommodation_unitrail][:amount_of_lebenshilfe_stars]}'"
    end
    
    unless params[:accommodation_unitrail][:amount_of_rooms] == ""
       if query_strg != ""
          query_strg = "#{query_strg} AND "
        end
      query_strg =  "#{query_strg}#{"amount_of_rooms"} >= '#{params[:accommodation_unitrail][:amount_of_rooms]}'"
    end
    
    federalstate = params[:federal_state][:id] - ['',""]
    if federalstate.size > 0
       
        if query_strg != ""
          query_strg = "#{query_strg} AND "
        end
        query_strg = "#{query_strg} ( "
        if federalstate.size > 1
            federalstate.each_with_index do |entry,index|
              query_strg =  "#{query_strg}#{"federal_state"} == '#{entry}'"
              
              if index != federalstate.size - 1
                 query_strg = "#{query_strg} OR "
              end
            end
          else
          query_strg =  "#{query_strg}#{"federal_state"} == '#{federalstate[0]}'"
        end
        
        query_strg = "#{query_strg} ) "
    end
    
    kind_of_house = params[:kind_of_house][:id] - ['',""]
    if kind_of_house.size > 0
       
        if query_strg != ""
          query_strg = "#{query_strg} AND "
        end
        query_strg = "#{query_strg} ( "
        if kind_of_house.size > 1
            kind_of_house.each_with_index do |entry,index|
              query_strg =  "#{query_strg}#{"kind_of_house"} == '#{entry}'"
              
              if index != kind_of_house.size - 1
                 query_strg = "#{query_strg} OR "
              end
            end
          else
          query_strg =  "#{query_strg}#{"kind_of_house"} == '#{kind_of_house[0]}'"
        end
        query_strg = "#{query_strg} ) "
    end

    
     params.delete :x
     params.delete :y
     params[:accommodation_unitrail].delete  :max_group_size
     params[:accommodation_unitrail].delete :distance_to_dresden
     params[:accommodation_unitrail].delete :amount_of_lebenshilfe_stars
     params[:accommodation_unitrail].delete :amount_of_rooms
     params[:accommodation_unitrail].delete :federal_state
     params[:accommodation_unitrail].delete :public_transfer_note
     params[:accommodation_unitrail].delete :public_transfer_weelchair_note
     params[:accommodation_unitrail].delete :care_service_note
     params.delete :action
     params.delete :controller
     params[:accommodation_unitrail].delete :kind_of_house
     params.delete :authenticity_token
     params.delete :utf8 
    
     
    
   
    #need to delete checkboxentrys with 0 as value
    params[:accommodation_unitrail].each do |k,v|      
      if params[:accommodation_unitrail][k]  == "0"
        params[:accommodation_unitrail].delete k
      end
        
    end

    query_strg_2 = params[:accommodation_unitrail].map{|k, v| "#{k} = 't'"}.join(' AND ')
     logger.info query_strg_2
    if (query_strg_2 != "" && query_strg != "" )
      query_strg = " #{query_strg} AND" 
    end
    
    query_strg = "#{query_strg} #{query_strg_2}" 
    
    else 
      query_strg = params[:tmp_query]
    end
   
   

    #logger.info query_strg
    @tmp_query = query_strg
    
    @results = AccommodationUnitrail.where(@tmp_query)
    @results_amount = @results.size
    
    render :template=>  'search/get_results_for_searchparameters'
  end

  def change_sorting_of_results
    @tmp_query = params[:tmp_query]
    if Rails.cache.read("order") == 0
      @results = AccommodationUnitrail.where(@tmp_query).order("distance")
     Rails.cache.write("order",1)
    else
      @results = AccommodationUnitrail.where(@tmp_query).order("distance").reverse
      Rails.cache.write("order",0)
    end   
    render :template=>  'search/get_results_for_searchparameters'
  end


  
   def insert
     
   
    
    
     @results_entrys_in_basket = ActiveRecord::Base.connection.select_all( "SELECT * FROM basket where accommodation_unitrail_id = '#{params[:accomodation_idc]}'" )
      
       if @results_entrys_in_basket.size == 0
         ActiveRecord::Base.connection.execute("INSERT INTO basket VALUES('#{params[:accomodation_idc]}','#{params[:accomodation_idc]}')")
        end
    
    
    respond_to do |format|
        format.js { render :layout=>false }
    end
  end
  
   def remove 
     
       @results_entrys_in_basket = ActiveRecord::Base.connection.select_all( "SELECT * FROM basket where accommodation_unitrail_id = '#{params[:accomodation_idc]}'" )
       if @results_entrys_in_basket.size == 0
         ActiveRecord::Base.connection.execute("DELETE FROM basket WHERE accommodation_unitrail_id = '#{params[:accomodation_idc]}'")
        end
    @clk = "you click me "
    respond_to do |format|
        format.js { render :layout=>false }
    end
  end
end

