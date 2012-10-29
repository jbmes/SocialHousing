class SearchController < ApplicationController
  def find_entrys
  end

  def get_results_for_searchparameters
    
     query_strg = ""
    unless params.has_key?(:tmp_query)
        unless params[:distance_to_dresden] == ""
      query_strg =  "#{query_strg}#{"distance"} <= '#{params[:distance_to_dresden]}'"
    end
    
     unless params[:max_group_size] == ""
       if query_strg != ""
          query_strg = "#{query_strg} AND "
        end
      query_strg =  "#{query_strg}#{"max_group_size"} <= '#{params[:max_group_size]}'"
    end
    
    unless params[:amount_of_lebenshilfe_stars] == ""
       if query_strg != ""
          query_strg = "#{query_strg} AND "
        end
      query_strg =  "#{query_strg}#{"amount_of_lebenshilfe_stars"} == '#{params[:amount_of_lebenshilfe_stars]}'"
    end
    
    unless params[:amount_of_rooms] == ""
       if query_strg != ""
          query_strg = "#{query_strg} AND "
        end
      query_strg =  "#{query_strg}#{"amount_of_rooms"} >= '#{params[:amount_of_rooms]}'"
    end
    
     unless params[:federal_state][:id] == ""
       if query_strg != ""
          query_strg = "#{query_strg} AND "
        end
      query_strg =  "#{query_strg}#{"federal_state"} == '#{params[:federal_state][:id]}'"
    end
    
    unless params[:house_style][:id] == ""
       if query_strg != ""
          query_strg = "#{query_strg} AND "
        end
      query_strg =  "#{query_strg}#{"house_style"} == '#{params[:house_style][:id]}'"
    end

    
     params.delete :x
     params.delete :y
     params.delete :max_group_size
     params.delete :distance_to_dresden
     params.delete :amount_of_lebenshilfe_stars
     params.delete :amount_of_rooms
     params.delete :federal_state
     params.delete :action
     params.delete :controller
     params.delete :house_style
    
    query_strg_2 = params.map{|k, v| "#{k} = 't'"}.join(' AND ')
    
    if (query_strg_2 != "" && query_strg != "" )
      query_strg = " #{query_strg} AND" 
    end
    
    query_strg = "#{query_strg} #{query_strg_2}" 
    
    else 
      query_strg = params[:tmp_query]
    end
   
   

    #logger.info query_strg
    @tmp_query = query_strg
    @results = AccommodationUnitrail.where(query_strg)
    @results_amount = @results.size
  end

end
