class EntryController < ApplicationController
  

  
  def show_entry
    @accommodation_unitrail = AccommodationUnitrail.find_by_id(params[:id])
  end

 


  def code_image
    
    @image_data = Photo.find(:first, :conditions => { :accommodation_id => params[:id]})
    @image = @image_data.binary_data
    send_data(@image, :type => @image_data.content_type, :filename => @image_data.filename,:disposition => 'inline')
  end


 def delete_entry
     AccommodationUnitrail.find_by_id(params[:id]).destroy
     @image_data = Photo.find(:all, :conditions => { :accommodation_id => params[:id]})
     
     @image_data.each do |entry|
       Photo.find_by_id(entry.id).destroy
     end
     
     #after deleting entry in database use old query to request search again
     redirect_to :controller => "search", :action => "get_results_for_searchparameters", :tmp_query => params[:tmp_query] 
  end

end