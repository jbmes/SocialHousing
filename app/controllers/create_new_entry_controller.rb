class CreateNewEntryController < ApplicationController
  
 
  
  def initialize
    @dresden_latitude = 51.050957
    @dresden_longitude = 13.733658
  end
  
  def new_entry
  end
  
  def create_entry_from_formdata
    
    @accommodation_unitrail = AccommodationUnitrail.new
    @accommodation_unitrail.name = params[:name]
    @accommodation_unitrail.contact_person = params[:contact_person]
    @accommodation_unitrail.tel_contact_person = params[:tel_contact_person]
    @accommodation_unitrail.city = params[:city]
    @accommodation_unitrail.street = params[:street]
    @accommodation_unitrail.house_number = params[:house_number]
    @accommodation_unitrail.postal_code = params[:postal_code]
    @accommodation_unitrail.email = params[:email]
    @accommodation_unitrail.internetadress = params[:internetadress]
    @accommodation_unitrail.internet = params[:internet]
    
    @accommodation_unitrail.latitude = params[:latitude]
    @accommodation_unitrail.longitude = params[:longitude]
    @accommodation_unitrail.distance = calculate_distance(params[:latitude].to_f, params[:longitude].to_f, @dresden_latitude.to_f, @dresden_longitude.to_f)
    
    @accommodation_unitrail.dvd_player = params[:dvd_player]
    @accommodation_unitrail.music_station = params[:music_station]
    @accommodation_unitrail.television = params[:television]
    @accommodation_unitrail.beamer = params[:beamer]
    @accommodation_unitrail.grouproom = params[:grouproom]
    @accommodation_unitrail.bedding = params[:bedding]
    @accommodation_unitrail.amount_of_lebenshilfe_stars = params[:amount_of_lebenshilfe_stars]
    @accommodation_unitrail.amount_of_rooms = params[:amount_of_rooms]
    
    @accommodation_unitrail.save
    id = @accommodation_unitrail.id
    
    
    
    redirect_to :controller => "entry", :action => "show_entry", :id => id 
  end
  
  
  def calculate_distance(latitude_1, longitude_1,latitude_2, longitude_2)
    
    logger.info "latitude_1 #{latitude_1}"
    logger.info "longitude_1 #{longitude_1}"
    logger.info "latitude_2 #{latitude_2}"
    logger.info "longitude_2 #{longitude_2}"
    
    #mit distance: Entfernung in km 
    lat = (latitude_1 + latitude_2) / 2 * 0.01745
    dx = 111.3 * Math.cos(lat) * (longitude_1 - longitude_2)
    dy = 111.3 * (latitude_1 - latitude_2)
    #lat1, lat2, lon1, lon2: Breite, Länge in Grad
    distance = Math.sqrt(dx * dx + dy * dy)
  end
  
end
