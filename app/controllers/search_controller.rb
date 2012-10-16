class SearchController < ApplicationController
  def find_entrys
  end

  def get_results_for_searchparameters
    query_strg = ""
    params.each do |key,value|
      unless key.to_s == "controller" || key.to_s == "action" || value == "" || key.to_s == "distance"
        if query_strg != ""
          query_strg = "#{query_strg} AND "
        end
        
        tmp_value = value
        if(tmp_value == "true")
          tmp_value= "t"
        end
        query_strg =  "#{query_strg}#{key} = '#{tmp_value}'"
      end
    end
    
    if params[:distance] == ""
      query_strg =  "AND #{query_strg}#{distance} <= '#{params[:distance]}'"
    end
    logger.info query_strg
    @results = AccommodationUnitrail.where(query_strg)
    @results_amount = @results.size
  end

end
