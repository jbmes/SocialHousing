class EntryController < ApplicationController
  

  
  def show_entry
    @accommodation_unitrail = AccommodationUnitrail.find_by_id(params[:id])
  end

 

end