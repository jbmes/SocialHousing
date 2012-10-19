class SearchController < ApplicationController
  def find_entrys
  end

  def get_results_for_searchparameters
    query_strg = ""
    params.each do |key,value|
      unless key.to_s == "controller" || key.to_s == "action" || value == "" || key.to_s == "distance_to_dresden" || key.to_s == "x" || key.to_s == "y" || key.to_s =="max_group_size"
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
    
    unless params[:distance_to_dresden] == ""
      if query_strg != ""
          query_strg = "#{query_strg} AND "
        end
      query_strg =  "#{query_strg}#{"distance"} <= '#{params[:distance_to_dresden]}'"
    end
    
     unless params[:max_group_size] == ""
       if query_strg != ""
          query_strg = "#{query_strg} AND "
        end
      query_strg =  "#{query_strg}#{"max_group_size"} <= '#{params[:max_group_size]}'"
    end
    logger.info query_strg
    @results = AccommodationUnitrail.where(query_strg)
    @results_amount = @results.size
  end

end
