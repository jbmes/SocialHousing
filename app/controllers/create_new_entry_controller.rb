class CreateNewEntryController < ApplicationController
  
 
  
  def initialize
    @dresden_latitude = 51.050957
    @dresden_longitude = 13.733658
  end
  
  def new_entry
    @accommodation_unitrail = AccommodationUnitrail.new
     4.times { @accommodation_unitrail.links.build }  
  end
  
  def create_entry_from_formdata
    
    @accommodation_unitrail = AccommodationUnitrail.new
    @accommodation_unitrail.name = params[:accommodation_unitrail][:name]
    @accommodation_unitrail.contact_person = params[:accommodation_unitrail][:contact_person]
    @accommodation_unitrail.tel_contact_person = params[:accommodation_unitrail][:tel_contact_person]
    @accommodation_unitrail.city = params[:accommodation_unitrail][:city]
    @accommodation_unitrail.street = params[:accommodation_unitrail][:street]
    @accommodation_unitrail.house_number = params[:accommodation_unitrail][:house_number]
    @accommodation_unitrail.postal_code = params[:accommodation_unitrail][:postal_code]
    @accommodation_unitrail.email = params[:accommodation_unitrail][:email]
    @accommodation_unitrail.internetadress = params[:accommodation_unitrail][:internetadress]
   
    @accommodation_unitrail.description = params[:accommodation_unitrail][:description]
    @accommodation_unitrail.amount_of_lebenshilfe_stars = params[:accommodation_unitrail][:amount_of_lebenshilfe_stars]
     
     
    adress = params[:accommodation_unitrail][:city].to_s + " " + params[:accommodation_unitrail][:street].to_s + " " + params[:accommodation_unitrail][:house_number].to_s + " " + params[:accommodation_unitrail][:postal_code].to_s
     
     
     
     geo_vals = Geocoder.coordinates(adress.to_s)
     unless geo_vals.nil?
       @accommodation_unitrail.latitude = geo_vals[0]
       @accommodation_unitrail.longitude = geo_vals[1]
     end
     
     @accommodation_unitrail.winter_suitable = params[:winter_suitable]
     unless params[:federal_state].nil?
        @accommodation_unitrail.federal_state =  params[:federal_state][:id]
     end

  unless params[:kind_of_house].nil?
     @accommodation_unitrail.kind_of_house =  params[:kind_of_house][:id]
   end
     
     @accommodation_unitrail.grill_area =  params[:grill_area]
      @accommodation_unitrail.campfire_area =  params[:campfire_area]
     
     @accommodation_unitrail.gym =  params[:gym]
      @accommodation_unitrail.football_area =  params[:football_area]
     
      @accommodation_unitrail.summer_coast =  params[:summer_coast]
      @accommodation_unitrail.winter_suitable =  params[:winter_suitable]
     
     @accommodation_unitrail.one_person_beth_rooms =  params[:one_person_beth_rooms]
     @accommodation_unitrail.two_person_beth_rooms =  params[:two_person_beth_rooms] 
     @accommodation_unitrail.more_person_beth_rooms =  params[:more_person_beth_rooms]
     
     
     unless geo_vals.nil?
      @accommodation_unitrail.distance = calculate_distance(geo_vals[0], geo_vals[1], @dresden_latitude.to_f, @dresden_longitude.to_f)
      
      else
         @accommodation_unitrail.distance = -1
     end
      
     @accommodation_unitrail.internet = params[:internet]
     @accommodation_unitrail.dvd_player = params[:dvd_player]
     @accommodation_unitrail.music_station = params[:music_station]
     @accommodation_unitrail.television = params[:television]
     @accommodation_unitrail.beamer = params[:beamer]
     @accommodation_unitrail.grouproom = params[:grouproom]
     @accommodation_unitrail.bedding = params[:bedding]
     
     @accommodation_unitrail.amount_of_rooms = params[:amount_of_rooms]
     
     @accommodation_unitrail.horse_riding = params[:horse_riding]
     @accommodation_unitrail.bowling = params[:bowling]
     @accommodation_unitrail.table_tennis = params[:table_tennis]
     @accommodation_unitrail.kicker = params[:kicker]
 
     @accommodation_unitrail.playground = params[:playground]
     @accommodation_unitrail.outdoor_swimming_bath = params[:outdoor_swimming_bath]
     
     @accommodation_unitrail.natatorium = params[:natatorium]
     @accommodation_unitrail.barrier_free = params[:barrier_free]
     @accommodation_unitrail.wheelchair_accessible_bed = params[:wheelchair_accessible_bed]
     @accommodation_unitrail.coster_bed = params[:coster_bed]
     @accommodation_unitrail.lifter = params[:lifter]
     @accommodation_unitrail.public_transfer_weelchair = params[:public_transfer_weelchair]
     @accommodation_unitrail.public_transfer = params[:public_transfer]
      @accommodation_unitrail.weelchair_restricted = params[:weelchair_restricted]
     
     @accommodation_unitrail.shopping_facilities = params[:shopping_facilities]
     @accommodation_unitrail.care_service = params[:care_service]
     @accommodation_unitrail.self_supply = params[:self_supply]
     @accommodation_unitrail.full_board = params[:full_board]
     @accommodation_unitrail.half_board = params[:half_board]
     @accommodation_unitrail.max_group_size = params[:max_group_size]
    
    
    
    
    
    
    
    
    @accommodation_unitrail.save
    id = @accommodation_unitrail.id
    
    unless params[:accommodation_unitrail][:foto].nil?
      @photo = Photo.new
       @photo.description = "testing"
       file_param = params[:accommodation_unitrail][:foto]
       @photo.category = "fotos"
       @photo.content_type = file_param.content_type
       @photo.filename = file_param.original_filename
       @photo.binary_data = file_param.read
       @photo.accommodation_id = id
       @photo.save
     end
    
    unless params[:accommodation_unitrail][:bedplan].nil?
      @photo = Photo.new
       @photo.description = "testing"
       file_param = params[:accommodation_unitrail][:bedplan]
       @photo.category = "bedplan"
       @photo.content_type = file_param.content_type
       @photo.filename = file_param.original_filename
       @photo.binary_data = file_param.read
       @photo.accommodation_id = id
       @photo.save
     end
    
    
    
    
    redirect_to :controller => "entry", :action => "show_entry", :id => id 
  end
  
  
  def calculate_distance(latitude_1, longitude_1,latitude_2, longitude_2)
    #mit distance: Entfernung in km 
    lat = (latitude_1 + latitude_2) / 2 * 0.01745
    dx = 111.3 * Math.cos(lat) * (longitude_1 - longitude_2)
    dy = 111.3 * (latitude_1 - latitude_2)
    #lat1, lat2, lon1, lon2: Breite, Länge in Grad
    distance = Math.sqrt(dx * dx + dy * dy)
  end
  
end
